import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class CameraView extends StatefulWidget {
  const CameraView({super.key});

  @override
  State<CameraView> createState() => _CameraViewState();
}

class _CameraViewState extends State<CameraView> {
  CameraController? _controller;
  Future<void>? _initializeControllerFuture;

  bool _permissionDenied = false;

  @override
  void initState() {
    super.initState();
    _setupCamera();
  }

  Future<void> _setupCamera() async {
    // Minta izin kamera
    var status = await Permission.camera.request();

    if (status.isDenied || status.isPermanentlyDenied) {
      setState(() {
        _permissionDenied = true;
      });
      return;
    }

    // Ambil kamera tersedia
    final cameras = await availableCameras();
    if (cameras.isEmpty) {
      debugPrint("Tidak ada kamera tersedia.");
      return;
    }
    final firstCamera = cameras.first;

    _controller = CameraController(
      firstCamera,
      ResolutionPreset.medium,
      enableAudio: false,
    );

    _initializeControllerFuture = _controller!.initialize();

    if (mounted) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_permissionDenied) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Izin kamera ditolak."),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () async {
                await openAppSettings(); // buka ke settings iOS/Android
              },
              child: const Text("Buka Pengaturan"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _permissionDenied = false;
                });
                _setupCamera();
              },
              child: const Text("Coba Lagi"),
            ),
          ],
        ),
      );
    }

    if (_controller == null) {
      return const Center(child: CircularProgressIndicator());
    }

    return FutureBuilder(
      future: _initializeControllerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return CameraPreview(_controller!);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
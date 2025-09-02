import 'package:flutter/material.dart';
import 'package:presensi_app_new/utils/camera_view.dart';

class ScanBarcodeScreen extends StatelessWidget{
  const ScanBarcodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B7BB4),

      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.notification_important_rounded, color: Colors.white),
            onPressed: () {
              
            },
          ),
        ],
        centerTitle: false,
        title: const Text(
          "Scan Barcode Absensi",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white, // warna teks
          ),
        ),
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent, // Menghilangkan overlay
        shadowColor: Colors.black54, // Bayangan lebih jelas
      ),

      //Body Section
      body: const Center(
        child: Padding(
          padding: EdgeInsets.only(right: 16, left: 16),
          child: CameraView(),
        ),
      ),

    );
  }

}


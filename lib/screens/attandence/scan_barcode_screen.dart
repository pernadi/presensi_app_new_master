import 'package:flutter/material.dart';
import 'package:presensi_app_new/utils/camera_view.dart';

class ScanBarcodeScreen extends StatelessWidget{
  const ScanBarcodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B7BB4),

      appBar: AppBar(
        backgroundColor: const Color(0xFF1B7BB4),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white,),
          onPressed: () => Navigator.pop(context), // 👈 kembali ke halaman sebelumnya
        ),
        title: const Text(
          "Scan Barcode",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          )
        ),
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


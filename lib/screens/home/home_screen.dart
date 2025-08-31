import 'package:flutter/material.dart';
import 'dart:async';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar di bagian atas
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent, // Menghilangkan overlay
        shadowColor: Colors.black54, // Bayangan lebih jelas
        elevation: 8.0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20), // Radius sudut bawah
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              
            },
          ),
        ],
      ),
      // Body utama
      body: const Center(
        child: Text(
          'Selamat datang di halaman utama!',
          style: TextStyle(fontSize: 20),
        ),
      ),
      // BottomAppBar di bagian bawah
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomAppBar(
          color: const Color.fromARGB(255, 24, 116, 191),
          surfaceTintColor: const Color.fromARGB(255, 24, 116, 191),
          elevation: 12,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const Icon(Icons.home, color: Colors.white),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.person, color: Colors.white),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      // Floating Action Button (opsional, untuk contoh)
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
        },
        backgroundColor: Colors.white,
        child: const Icon(Icons.camera),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card( 
                  color: const Color(0xFF1874BF),
                  elevation: 8, // Bayangan kartu
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16), // Radius sudut kartu
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(0.0),
                          child: Row(
                            children: [
                              Padding(
                                  padding: EdgeInsets.all(0.0),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/people.png', // Ganti dengan path gambar Anda
                                        width: 50, // Lebar gambar
                                        height: 50, // Tinggi gambar
                                        fit: BoxFit.cover, // Cara gambar di-fit
                                      ),
                                      const Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 4), // kasih jarak bawah 4px
                                            child: Text(
                                              "Gabriel Panjaitan",
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 4), // kasih jarak atas 4px
                                            child: Text(
                                              "D-IV Teknik Rekayasa Perangkat Lunak",
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                            ],
                          ),
                        )
                      ],
                    )
                  ),
            ),
          )
        ],
      ),



      // BottomAppBar di bagian bawah
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomAppBar(
          color: const Color(0xFF1874BF), // Warna BottomAppBar #1874BF
          surfaceTintColor: const Color(0xFF1874BF),
          elevation: 12,
          shape: const CircularNotchedRectangle(),
          notchMargin: 12.0, // Jarak takik untuk FAB
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0), // Geser ikon home ke kiri
                  child: IconButton(
                    icon: const Icon(
                      Icons.home,
                      color: Color(0xFFFFFFFF),
                      size: 32,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              const Spacer(flex: 2), // Ruang untuk takik FAB
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(right: 16.0), // Geser ikon person ke kanan
                  child: IconButton(
                    icon: const Icon(
                      Icons.person,
                      color: Color(0xFFFFFFFF),
                      size: 32,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // Floating Action Button (opsional, untuk contoh)
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
        },
        backgroundColor: const Color(0xFF1B7BB4),
        child: const Icon(Icons.camera, color: Colors.white, size: 32,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
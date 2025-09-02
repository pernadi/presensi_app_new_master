import 'package:flutter/material.dart';
import 'package:presensi_app_new/screens/attandence/scan_barcode_screen.dart';

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
            icon: const Icon(Icons.notification_important_rounded, color: Color(0xFF1B7BB4),),
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
              padding: const EdgeInsets.all(8.0),
              child: Card( 
                  color: const Color(0xFF1B7BB4),
                  surfaceTintColor: const Color(0xFF1B7BB4),
                  elevation: 8, // Bayangan kartu
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16), // Radius sudut kartu
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(12),
                          child: const Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Avatar
                              CircleAvatar(
                                radius: 22,
                                backgroundColor: Colors.white,
                                child: Icon(Icons.person, size: 30, color: Color(0xFF1B7BB4)),
                              ),
                              SizedBox(width: 12),

                              // Nama & Jabatan
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Gabriel Panjaitan",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(height: 2),
                                    Text(
                                      "D-IV Teknologi Rekayasa Perangkat Lunak",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              // Jam & Tanggal
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "10.37 WIB",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 2),
                                  Text(
                                    "Minggu, 20 Juli 2025",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),


                        const SizedBox(height: 12),

                        SizedBox(
                          width: double.infinity, // match_parent
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 14), // tinggi (wrap)
                              elevation: 3,
                            ),
                            onPressed: () {
                              print("Absen Masuk & Keluar ditekan");
                            },
                            child: const Text(
                              "Absen Masuk dan Keluar",
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                          ),
                        )
                      ],
                    )
                  ),
            ),
          ),

          const SizedBox(height: 12,),

          const Padding(
            padding: EdgeInsets.only(right: 16, left: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // kasih jarak max
              children: [
                Padding(
                  padding: EdgeInsets.all(0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mata kuliah dan sesi",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                            color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 2),
                        Text(
                          "Daftar mata kuliah untuk hari ini",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontStyle: FontStyle.italic
                          ),
                        ),
                      ],
                  ),
                ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Lihat semua",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.blue,
                    ),
                  ),
                ],
              )
              ],
            ),
          ),

          const SizedBox(height: 12,),

          //List Cardview
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 80),
            child: Card(
              color: const Color.fromARGB(255, 255, 255, 255),
              surfaceTintColor: const Color.fromARGB(255, 255, 255, 255),
              elevation: 4, // Bayangan kartu
              child: Padding(
                padding: const EdgeInsets.only(right: 16, left: 16, top: 16, bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/people.png', width: 50, height: 50),
                        const SizedBox(width: 5,),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Machine Learning",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "Sesi Teori",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        )
                      ],
                    ), 

                    const Text(
                      "Absen",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue,
                      ),

                    )
                  ],
                ),
              ),  
            ),
          ),

          const SizedBox(height: 12,),

          const Padding(
            padding: EdgeInsets.only(right: 16, left: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // kasih jarak max
              children: [
                Padding(
                  padding: EdgeInsets.all(0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Data Absensi Kamu",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                            color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 2),
                        Text(
                          "Daftar absensi kamu di mata kuliah hari ini",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontStyle: FontStyle.italic
                          ),
                        ),
                      ],
                  ),
                ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Lihat semua",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.blue,
                    ),
                  ),
                ],
              )
              ],
            ),
          ),

          const SizedBox(height: 12,),

          const Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //Done Attandance
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.check_circle, color: Color.fromARGB(255, 31, 161, 98),size: 30),
                        SizedBox(width: 5,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Machine Learning",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "Sesi Teori",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Hadir",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 31, 161, 98),
                          ),
                        ),
                        Text(
                          "21-07-2025 00:00:00",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    )
                  ],
                ),

                SizedBox(height: 8,),

                Divider(
                  color: Colors.grey,   // warna garis
                  thickness: 1,         // tebal garis
                  indent: 2,           // jarak dari kiri
                  endIndent: 2,        // jarak dari kanan
                ),


                //Not done attandance
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.info_rounded, color: Color.fromARGB(255, 227, 22, 22),size: 30),
                        SizedBox(width: 5,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Machine Learning",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "Sesi Teori",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Tidak Hadir",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 227, 22, 22),
                          ),
                        ),
                        Text(
                          "21-07-2025 00:00:00",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    )
                  ],
                ),

                SizedBox(height: 8,),

                Divider(
                  color: Colors.grey,   // warna garis
                  thickness: 1,         // tebal garis
                  indent: 2,           // jarak dari kiri
                  endIndent: 2,        // jarak dari kanan
                )
              ],
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
          color: const Color(0xFF1B7BB4), // Warna BottomAppBar #1874BF
          surfaceTintColor: const Color(0xFF1B7BB4),
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
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => ScanBarcodeScreen()),
          );
        },
        backgroundColor: const Color(0xFF1B7BB4),
        child: const Icon(Icons.camera, color: Colors.white, size: 32,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
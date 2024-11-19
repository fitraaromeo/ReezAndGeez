import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Stack(
          children: [
            // Custom Back Button at the top
            Positioned(
              top: 40,
              left: 20,
              child: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200, // Warna netral untuk tombol kembali
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        blurRadius: 6,
                        offset: Offset(2, 4),
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black87, // Warna gelap untuk ikon
                    size: 24,
                  ),
                ),
              ),
            ),

            // Main content
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Logo and title
                    Text(
                      'Reez & Geez',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87, // Warna gelap untuk kontras
                        fontFamily: 'Cursive',
                        shadows: [
                          Shadow(
                            offset: Offset(2, 2),
                            blurRadius: 5,
                            color: Colors.grey.shade300,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'GIFT WITH LOVE',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1.2,
                      ),
                    ),
                    SizedBox(height: 50),

                    // Admin Action Container
                    Container(
                      padding: EdgeInsets.all(32.0),
                      width: MediaQuery.of(context).size.width * 0.85,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100, // Warna abu terang untuk card
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300,
                            spreadRadius: 2,
                            blurRadius: 8,
                            offset: Offset(4, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Admin Dashboard',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.pink.shade600, // Warna pink cerah untuk heading
                            ),
                          ),
                          SizedBox(height: 30),

                          // Edit Produk Button
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                Get.toNamed('/editproduct');
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.pink.shade600, // Warna pink cerah
                                padding: EdgeInsets.symmetric(
                                  vertical: 14.0,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                shadowColor: Colors.pink.shade300,
                                elevation: 8,
                              ),
                              child: Text(
                                'Edit Produk',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 16),

                          // Edit FAQ Button
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                Get.toNamed('/editfaq');
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.pink.shade600,
                                padding: EdgeInsets.symmetric(
                                  vertical: 14.0,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                shadowColor: Colors.pink.shade300,
                                elevation: 8,
                              ),
                              child: Text(
                                'Edit FAQ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 16),

                          // Orders Button
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                Get.toNamed('/orderpage');
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.pink.shade600,
                                padding: EdgeInsets.symmetric(
                                  vertical: 14.0,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                shadowColor: Colors.pink.shade300,
                                elevation: 8,
                              ),
                              child: Text(
                                'Orders',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

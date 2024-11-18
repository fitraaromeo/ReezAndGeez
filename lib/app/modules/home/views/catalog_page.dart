import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'catalog_item.dart'; // Import CatalogItem

class CatalogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Stack(
          children: [
            // Tombol kembali
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
            SafeArea(
              child: Column(
                children: [
                  SizedBox(height: 80),
                  Column(
                    children: [
                      Text(
                        'Reez & Geez',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87, // Warna teks gelap untuk kontras
                          fontFamily: 'Cursive',
                          shadows: [
                            Shadow(
                              offset: Offset(1, 1),
                              blurRadius: 3,
                              color: Colors.grey.shade300,
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'GIFT WITH LOVE',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade600, // Warna teks abu untuk subtitle
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.2,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    margin: EdgeInsets.symmetric(horizontal: 24.0),
                    decoration: BoxDecoration(
                      color: Colors.pink.shade50, // Warna pastel pink untuk card header
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade400,
                          blurRadius: 6,
                          offset: Offset(2, 4),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Katalog',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: GridView.count(
                        crossAxisCount: 1, // Menampilkan 1 item per baris agar lebih besar
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                        childAspectRatio: 0.6, // Sesuaikan rasio untuk membuat item lebih tinggi
                        children: [
                          CatalogItem(
                            imageUrl: 'lib/app/assets/catalog1.jpg',
                            title: 'Custom (Edit + Kata-kata + Cetak)',
                            onPressed: () {
                              Get.toNamed('/custom');
                            },
                          ),
                          CatalogItem(
                            imageUrl: 'lib/app/assets/catalog2.jpg',
                            title: 'Cetak Saja (Desain Sendiri)',
                            onPressed: () {
                              Get.toNamed('/printonly');
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

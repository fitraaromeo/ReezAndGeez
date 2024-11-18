import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reez_and_geez1/app/modules/home/views/order_form_page.dart';
import 'catalog_page.dart'; // Import the CatalogPage

class CustomerPage extends StatelessWidget {
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
                    color: Colors.grey.shade200, // Warna abu terang untuk tombol kembali
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
                    color: Colors.black87, // Warna ikon gelap untuk kontras
                    size: 24,
                  ),
                ),
              ),
            ),

            // Main content
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Logo and Header outside of the card
                  Text(
                    'Reez & Geez',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87, // Warna teks gelap
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
                  SizedBox(height: 8),
                  Text(
                    'GIFT WITH LOVE',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey.shade600, // Warna abu lembut untuk subtitle
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Montserrat',
                      letterSpacing: 1.2,
                    ),
                  ),
                  SizedBox(height: 30),

                  // Main Content Card with optimized width
                  Container(
                    width: MediaQuery.of(context).size.width * 0.85, // Konsisten dengan halaman lain
                    constraints: BoxConstraints(
                      maxWidth: 600, // Maksimal lebar untuk layar besar
                    ),
                    padding: EdgeInsets.all(24.0),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100, // Warna abu terang untuk card
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 10,
                          offset: Offset(4, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Sub Header inside the card
                        Text(
                          'Reez and Geez',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.pink.shade600, // Warna pink cerah
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        Text(
                          'Abadikan Cintamu ❤️',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.pink.shade300, // Warna pink lembut
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        SizedBox(height: 24),

                        // Katalog Button
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            minWidth: 200,
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.pink.shade600, // Warna pink cerah
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                              shadowColor: Colors.pink.shade300, // Bayangan tombol lembut
                              elevation: 6,
                            ),
                            onPressed: () {
                              Get.to(CatalogPage()); // Navigate to CatalogPage
                            },
                            child: Text(
                              'Katalog',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 16),

                        // Pemesanan Button
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            minWidth: 200,
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.pink.shade600,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                              shadowColor: Colors.pink.shade300,
                              elevation: 6,
                            ),
                            onPressed: () {
                              Get.to(OrderFormPage());
                            },
                            child: Text(
                              'Pemesanan',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 16),

                        // FAQ Button
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            minWidth: 200,
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.pink.shade600,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                              shadowColor: Colors.pink.shade300,
                              elevation: 6,
                            ),
                            onPressed: () {
                              Get.snackbar("Info", "Menuju halaman FAQ!");
                            },
                            child: Text(
                              'FAQ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
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
          ],
        ),
      ),
    );
  }
}

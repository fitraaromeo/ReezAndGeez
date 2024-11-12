import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'catalog_page.dart'; // Import the CatalogPage

class CustomerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.pink.shade100, Colors.pink.shade300],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
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
                    color: Colors.pink.shade400,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6,
                        offset: Offset(2, 4),
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
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
                      color: Colors.white,
                      fontFamily: 'Cursive',
                      shadows: [
                        Shadow(
                          offset: Offset(2, 2),
                          blurRadius: 5,
                          color: Colors.black26,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'GIFT WITH LOVE',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white70,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Montserrat',
                      letterSpacing: 1.2,
                    ),
                  ),
                  SizedBox(height: 30),

                  // Main Content Card with optimized width
                  Container(
                    width: MediaQuery.of(context).size.width * 0.85, // Consistent width with previous page
                    constraints: BoxConstraints(
                      maxWidth: 600, // Sets a max width for larger screens
                    ),
                    padding: EdgeInsets.all(24.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
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
                            color: Colors.pink.shade400,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        Text(
                          'Abadikan Cintamu ❤️',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.pink.shade200,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        SizedBox(height: 24),

                        // Katalog Button with consistent size
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            minWidth: 200, // Set consistent width for all buttons
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.pink.shade400,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                              shadowColor: Colors.pink.shade200,
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

                        // Pemesanan Button with consistent size
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            minWidth: 200, // Set consistent width for all buttons
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.pink.shade400,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                              shadowColor: Colors.pink.shade200,
                              elevation: 6,
                            ),
                            onPressed: () {
                              Get.snackbar("Info", "Menuju halaman Pemesanan!");
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

                        // FAQ Button with consistent size
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            minWidth: 200, // Set consistent width for all buttons
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.pink.shade400,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                              shadowColor: Colors.pink.shade200,
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

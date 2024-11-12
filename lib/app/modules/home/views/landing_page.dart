import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LandingPage extends StatelessWidget {
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo Text
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
                      color: Colors.black38,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12),
              // Subtitle Text
              Text(
                'GIFT WITH LOVE',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white70,
                  fontFamily: 'Montserrat',
                  letterSpacing: 1.5,
                ),
              ),
              SizedBox(height: 50),
              // Content Card
              Container(
                width: MediaQuery.of(context).size.width * 0.85,
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 48),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: Offset(4, 4),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Title Text
                    Text(
                      'Reez and Geez',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.pink.shade400,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    SizedBox(height: 10),
                    // Tagline Text
                    Text(
                      'Abadikan Cintamu',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.pink.shade200,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    SizedBox(height: 40),
                    // Admin Button with Icon
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: 200, // Set width yang sama
                      ),
                      child: ElevatedButton.icon(
                        icon: Icon(Icons.admin_panel_settings, color: Colors.white),
                        label: Text(
                          'Admin',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink.shade400,
                          shadowColor: Colors.pink.shade200,
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 18),
                        ),
                        onPressed: () => Get.toNamed('/login_page'),
                      ),
                    ),
                    SizedBox(height: 20),
                    // Customer Button with Icon
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: 200, // Set width yang sama
                      ),
                      child: ElevatedButton.icon(
                        icon: Icon(Icons.people, color: Colors.white),
                        label: Text(
                          'Customer',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink.shade400,
                          shadowColor: Colors.pink.shade200,
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 18),
                        ),
                        onPressed: () => Get.toNamed('/customer'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

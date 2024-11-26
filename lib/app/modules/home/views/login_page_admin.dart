import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reez_and_geez1/app/modules/home/controllers/auth_controller.dart';

class LoginPage extends StatelessWidget {
  // Inisialisasi AuthController menggunakan Get.put
  final AuthController authController = Get.put(AuthController());

  // Membuat controller untuk email dan password
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Stack(
          children: [
            // Tombol Kembali
            Positioned(
              top: 40,
              left: 20,
              child: GestureDetector(
                onTap: () => Get.back(),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
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
                    color: Colors.black87,
                    size: 24,
                  ),
                ),
              ),
            ),

            // Konten Utama
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Judul
                    Text(
                      'Reez & Geez',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
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

                    // Form Login
                    Container(
                      padding: EdgeInsets.all(24.0),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
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
                            'Login',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.pink.shade600,
                            ),
                          ),
                          SizedBox(height: 20),

                          // Input Email
                          TextField(
                            controller: emailController,
                            decoration: InputDecoration(
                              hintText: 'Email',
                              filled: true,
                              fillColor: Colors.grey.shade200,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide.none,
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 16.0,
                                horizontal: 20.0,
                              ),
                            ),
                          ),
                          SizedBox(height: 16),

                          // Input Password
                          TextField(
                            obscureText: true,
                            controller: passwordController,
                            decoration: InputDecoration(
                              hintText: 'Password',
                              filled: true,
                              fillColor: Colors.grey.shade200,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide.none,
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 16.0,
                                horizontal: 20.0,
                              ),
                            ),
                          ),
                          SizedBox(height: 24),

                          // Tombol Login
                          Obx(() {
                            return ElevatedButton(
                              onPressed: authController.isLoading.value
                                  ? null // Disable button saat loading
                                  : () async {
                                      String email = emailController.text.trim();
                                      String password = passwordController.text.trim();

                                      if (email.isNotEmpty && password.isNotEmpty) {
                                        await authController.login(email, password);
                                      } else {
                                        Get.snackbar(
                                          'Error',
                                          'Email dan password tidak boleh kosong.',
                                          snackPosition: SnackPosition.BOTTOM,
                                          duration: Duration(seconds: 3),
                                        );
                                      }
                                    },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.pink.shade600,
                                padding: EdgeInsets.symmetric(
                                  vertical: 14.0,
                                  horizontal: 50.0,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                shadowColor: Colors.pink.shade300,
                                elevation: 8,
                              ),
                              child: authController.isLoading.value
                                  ? CircularProgressIndicator(color: Colors.white) // Loading spinner
                                  : Text(
                                      'Login',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                            );
                          }),
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

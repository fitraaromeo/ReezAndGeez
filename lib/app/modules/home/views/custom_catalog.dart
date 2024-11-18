import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomCatalog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.1), // 10% from top

              // Title Section with "RG" background and overlay text
              Stack(
                alignment: Alignment.center,
                children: [
                  Text(
                    'RG',
                    style: TextStyle(
                      fontSize: 100,
                      color: Colors.grey.shade200, // Warna abu muda untuk teks latar
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'Reez & Geez',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87, // Warna teks gelap
                          fontFamily: 'Cursive',
                        ),
                      ),
                      Text(
                        'GIFT WITH LOVE',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade600, // Warna abu untuk subtitle
                          letterSpacing: 1.2,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 24),

              // Card for Product Image, Description, and Price
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      // Product Image
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'lib/app/assets/catalog1.jpg', // Replace with your image path
                          width: double.infinity, // Makes image fill the available width
                          height: MediaQuery.of(context).size.height * 0.3, // 30% of screen height
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 16),

                      // Product Title
                      Text(
                        'Produk Custom',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87, // Warna teks gelap untuk kontras
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      SizedBox(height: 8),

                      // Product Description
                      Text(
                        'Cetak Buku Ukuran A5 / Buku Custom\nProduk Ini Hanya Menerima File Siap Cetak Ya\nCocok Untuk Kado Pasangan, Orang Tua',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade700, // Warna abu untuk deskripsi
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      SizedBox(height: 16),

                      // Price Range
                      Text(
                        'Rp. 104.400,00',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.pink.shade600, // Warna pink cerah untuk harga
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),

              // Divider Line
              Divider(
                color: Colors.grey.shade400,
                thickness: 1,
                indent: 40,
                endIndent: 40,
              ),
              SizedBox(height: 8),

              // "Keterangan Produk" Section (Product Information Section)
              Text(
                'Keterangan Produk',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                  fontFamily: 'Montserrat',
                ),
              ),
              SizedBox(height: 24),

              // Back Button
              ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink.shade600, // Warna pink cerah untuk tombol
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                ),
                child: Text(
                  'Back',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

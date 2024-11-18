import 'package:flutter/material.dart';

class CatalogItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final VoidCallback onPressed;

  CatalogItem({
    required this.imageUrl,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Gambar di dalam card dengan bayangan lembut
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade100, // Warna abu terang untuk latar belakang card
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300, // Bayangan lembut
                  blurRadius: 8,
                  offset: Offset(4, 4),
                ),
              ],
              borderRadius: BorderRadius.circular(12),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: AspectRatio(
                aspectRatio: 1, // Membuat gambar berbentuk persegi
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: 8),

          // Judul dengan warna teks yang serasi
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.black87, // Warna teks gelap untuk kontras
                fontFamily: 'Montserrat',
              ),
            ),
          ),
          SizedBox(height: 8),

          // Tombol Pilih
          ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pink.shade600, // Warna pink cerah yang konsisten
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              shadowColor: Colors.pink.shade300, // Bayangan tombol lembut
              elevation: 8,
            ),
            child: Text(
              'Pilih',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
                fontFamily: 'Montserrat',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

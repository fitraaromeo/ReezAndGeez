import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderPage extends StatelessWidget {
  // Sample data untuk ditampilkan dalam tabel
  final List<Map<String, String>> orders = [
    {
      'Nama Akun Shopee': 'JohnDoe123',
      'Nomor WhatsApp': '08123456789',
      'Tanggal Dibutuhkan': '2024-12-01',
      'Jumlah Halaman': '20',
      'Link Google Drive': 'https://drive.google.com/sample',
      'Judul Buku': 'My Story',
      'Nama di Cover': 'John',
      'Edit Foto': 'Berwarna',
      'Isi Barcode': 'https://example.com/barcode',
      'Colour Palette': 'Palette A',
      'Packaging': 'Bubble Mailer',
      'Bukti Payment': 'Bukti123.jpg',
    },
    {
      'Nama Akun Shopee': 'JaneSmith456',
      'Nomor WhatsApp': '08198765432',
      'Tanggal Dibutuhkan': '2024-12-05',
      'Jumlah Halaman': '30',
      'Link Google Drive': 'https://drive.google.com/sample2',
      'Judul Buku': 'Adventure Tales',
      'Nama di Cover': 'Jane',
      'Edit Foto': 'Hitam Putih',
      'Isi Barcode': 'https://example.com/barcode2',
      'Colour Palette': 'Palette B',
      'Packaging': 'Box',
      'Bukti Payment': 'Bukti456.jpg',
    },
    // Tambahkan data lainnya sesuai kebutuhan
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Stack(
          children: [
            // Custom Back Button
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

            // Main content
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 100), // Space for the back button

                  // Header
                  Text(
                    'Reez and Geez',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontFamily: 'Cursive',
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'View Customer Orders',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey.shade600,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  SizedBox(height: 30),

                  // Table with customer orders
                  Container(
                    width: MediaQuery.of(context).size.width * 0.95,
                    constraints: BoxConstraints(
                      maxWidth: 800,
                    ),
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 10,
                          offset: Offset(4, 4),
                        ),
                      ],
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                        columns: [
                          DataColumn(label: Text('Nama Akun Shopee')),
                          DataColumn(label: Text('Nomor WhatsApp')),
                          DataColumn(label: Text('Tanggal Dibutuhkan')),
                          DataColumn(label: Text('Jumlah Halaman')),
                          DataColumn(label: Text('Link Google Drive')),
                          DataColumn(label: Text('Judul Buku')),
                          DataColumn(label: Text('Nama di Cover')),
                          DataColumn(label: Text('Edit Foto')),
                          DataColumn(label: Text('Isi Barcode')),
                          DataColumn(label: Text('Colour Palette')),
                          DataColumn(label: Text('Packaging')),
                          DataColumn(label: Text('Bukti Payment')),
                        ],
                        rows: orders.map((order) {
                          return DataRow(cells: [
                            DataCell(Text(order['Nama Akun Shopee']!)),
                            DataCell(Text(order['Nomor WhatsApp']!)),
                            DataCell(Text(order['Tanggal Dibutuhkan']!)),
                            DataCell(Text(order['Jumlah Halaman']!)),
                            DataCell(
                              GestureDetector(
                                onTap: () {
                                  // Buka link di browser
                                  Get.snackbar('Info', 'Membuka link: ${order['Link Google Drive']}');
                                },
                                child: Text(
                                  order['Link Google Drive']!,
                                  style: TextStyle(
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ),
                            DataCell(Text(order['Judul Buku']!)),
                            DataCell(Text(order['Nama di Cover']!)),
                            DataCell(Text(order['Edit Foto']!)),
                            DataCell(Text(order['Isi Barcode']!)),
                            DataCell(Text(order['Colour Palette']!)),
                            DataCell(Text(order['Packaging']!)),
                            DataCell(Text(order['Bukti Payment']!)),
                          ]);
                        }).toList(),
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

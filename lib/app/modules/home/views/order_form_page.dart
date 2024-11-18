import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderFormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    // Controllers for text fields
    final shopeeAccountController = TextEditingController();
    final waNumberController = TextEditingController();
    final requestDateController = TextEditingController();
    final googleDriveLinkController = TextEditingController();
    final bookTitleController = TextEditingController();
    final coverNameController = TextEditingController();
    final barcodeRequestController = TextEditingController();
    final paymentProofController = TextEditingController();

    String? pages = '20'; // Default value for number of pages
    String? photoEdit = 'Berwarna'; // Default value for photo edit
    String? colourPalette = 'Palette A'; // Default value for colour palette
    String? packaging = 'Bubble Mailer'; // Default value for packaging

    return Scaffold(
      body: Stack(
        children: [
          // Main content with a SingleChildScrollView
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60), // Space for the back button

                // Header
                Center(
                  child: Column(
                    children: [
                      Text(
                        'Reez & Geez',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                          fontFamily: 'Cursive',
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'GIFT WITH LOVE',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade600,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),

                // Form inside Card
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Shopee Account
                          _buildTextFieldWithLabel('Nama Akun Shopee', shopeeAccountController),

                          // WA Number
                          _buildTextFieldWithLabel('Nomor WhatsApp', waNumberController),

                          // Request Date
                          _buildTextFieldWithLabel('Dibutuhkan Tanggal Berapa', requestDateController),

                          // Number of Pages
                          _buildDropdownFieldWithLabel(
                            label: 'Jumlah Halaman',
                            value: pages,
                            items: ['20', '30', '40'],
                            onChanged: (val) => pages = val,
                          ),

                          // Google Drive Link
                          _buildTextFieldWithLabel('Link Google Drive', googleDriveLinkController),

                          // Keterangan jumlah halaman dan foto
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              '20 halaman = 15 foto, 30 halaman = 24 foto, 40 halaman = 30 foto',
                              style: TextStyle(fontSize: 12, color: Colors.grey.shade700),
                            ),
                          ),

                          // Book Title
                          _buildTextFieldWithLabel('Judul Buku', bookTitleController),

                          // Name on Cover
                          _buildTextFieldWithLabel('Nama untuk Ditulis di Cover', coverNameController),

                          // Photo Edit
                          _buildDropdownFieldWithLabel(
                            label: 'Edit Foto',
                            value: photoEdit,
                            items: ['Hitam Putih', 'Berwarna'],
                            onChanged: (val) => photoEdit = val,
                          ),

                          // Barcode Request
                          _buildTextFieldWithLabel('Request Isi Barcode (Link)', barcodeRequestController),

                          // Colour Palette
                          _buildDropdownFieldWithLabel(
                            label: 'Colour Palette',
                            value: colourPalette,
                            items: ['Palette A', 'Palette B', 'Palette C', 'Palette D', 'Palette E'],
                            onChanged: (val) => colourPalette = val,
                          ),

                          // Packaging
                          _buildDropdownFieldWithLabel(
                            label: 'Packaging',
                            value: packaging,
                            items: ['Bubble Mailer', 'Box'],
                            onChanged: (val) => packaging = val,
                          ),

                          // Proof of Payment
                          _buildTextFieldWithLabel('Bukti Payment', paymentProofController),

                          SizedBox(height: 20),

                          // Submit Button
                          Center(
                            child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  Get.snackbar(
                                    'Success',
                                    'Form Submitted Successfully!',
                                    snackPosition: SnackPosition.BOTTOM,
                                    backgroundColor: Colors.green.shade300,
                                    colorText: Colors.white,
                                  );
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.pink.shade600,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                              ),
                              child: Text(
                                'Submit',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

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
        ],
      ),
    );
  }

  // Helper function to create a text field with label above
  Widget _buildTextFieldWithLabel(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 4),
          TextFormField(
            controller: controller,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white, // Set color berbeda dari Card
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.grey.shade400), // Border warna
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Field ini wajib diisi';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }

  // Helper function to create a dropdown field with label above
  Widget _buildDropdownFieldWithLabel({
    required String label,
    required String? value,
    required List<String> items,
    required Function(String?) onChanged,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 4),
          DropdownButtonFormField<String>(
            value: value,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white, // Set color berbeda dari Card
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.grey.shade400), // Border warna
              ),
            ),
            items: items.map((item) {
              return DropdownMenuItem<String>(
                value: item,
                child: Text(item),
              );
            }).toList(),
            onChanged: onChanged,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Pilih salah satu';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditFaqPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Data dummy FAQ
    final List<Map<String, String>> faqData = [
      {
        'question': 'Apa itu Reez & Geez?',
        'answer': 'Reez & Geez adalah platform untuk memberikan hadiah dengan cinta.'
      },
      {
        'question': 'Bagaimana cara memesan produk?',
        'answer': 'Anda dapat memesan melalui halaman Pemesanan di aplikasi ini.'
      },
      {
        'question': 'Apakah tersedia customisasi hadiah?',
        'answer': 'Ya, kami menyediakan opsi customisasi untuk memenuhi kebutuhan Anda.'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Admin FAQ',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.pink.shade600,
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              // Placeholder untuk tambah FAQ
              Get.snackbar('Info', 'Tambah FAQ baru!');
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: faqData.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.only(bottom: 16),
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Pertanyaan
                    Text(
                      faqData[index]['question']!,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        color: Colors.pink.shade600,
                      ),
                    ),
                    SizedBox(height: 8),
                    // Jawaban
                    Text(
                      faqData[index]['answer']!,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade700,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    SizedBox(height: 16),
                    // Tombol Edit dan Hapus
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton.icon(
                          onPressed: () {
                            // Placeholder untuk edit FAQ
                            Get.snackbar('Edit', 'Edit FAQ: ${faqData[index]['question']}');
                          },
                          icon: Icon(
                            Icons.edit,
                            color: Colors.blue.shade600,
                          ),
                          label: Text(
                            'Edit',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.blue.shade600,
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        TextButton.icon(
                          onPressed: () {
                            // Placeholder untuk hapus FAQ
                            Get.snackbar('Hapus', 'Hapus FAQ: ${faqData[index]['question']}');
                          },
                          icon: Icon(
                            Icons.delete,
                            color: Colors.red.shade600,
                          ),
                          label: Text(
                            'Hapus',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.red.shade600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Placeholder untuk tambah FAQ
          Get.snackbar('Tambah FAQ', 'Form tambah FAQ akan ditampilkan.');
        },
        backgroundColor: Colors.pink.shade600,
        child: Icon(Icons.add),
      ),
    );
  }
}

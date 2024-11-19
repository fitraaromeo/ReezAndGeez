import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditFaqPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Data dummy FAQ menggunakan RxList untuk reaktivitas
    final RxList<Map<String, String>> faqData = RxList([
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
    ]);

    // Function untuk menampilkan popup form tambah FAQ
    void showAddFaqPopup() {
      final TextEditingController questionController = TextEditingController();
      final TextEditingController answerController = TextEditingController();

      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            title: Text(
              'Tambah FAQ Baru',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
              ),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: questionController,
                  decoration: InputDecoration(
                    labelText: 'Pertanyaan',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  controller: answerController,
                  decoration: InputDecoration(
                    labelText: 'Jawaban',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  maxLines: 3,
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Tutup popup
                },
                child: Text(
                  'Batal',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.red.shade600,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (questionController.text.isNotEmpty &&
                      answerController.text.isNotEmpty) {
                    // Tambahkan data ke daftar FAQ
                    faqData.add({
                      'question': questionController.text,
                      'answer': answerController.text,
                    });
                    Navigator.of(context).pop(); // Tutup popup
                    Get.snackbar(
                      'Berhasil',
                      'FAQ baru berhasil ditambahkan!',
                      backgroundColor: Colors.green.shade100,
                      snackPosition: SnackPosition.BOTTOM,
                    );
                  } else {
                    Get.snackbar(
                      'Error',
                      'Harap isi semua kolom!',
                      backgroundColor: Colors.red.shade100,
                      snackPosition: SnackPosition.BOTTOM,
                    );
                  }
                },
                child: Text(
                  'Simpan',
                  style: TextStyle(fontFamily: 'Montserrat'),
                ),
              ),
            ],
          );
        },
      );
    }

    // Function untuk menampilkan popup form edit FAQ
    void showEditFaqPopup(int index) {
      final TextEditingController questionController =
          TextEditingController(text: faqData[index]['question']);
      final TextEditingController answerController =
          TextEditingController(text: faqData[index]['answer']);

      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            title: Text(
              'Edit FAQ',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
              ),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: questionController,
                  decoration: InputDecoration(
                    labelText: 'Pertanyaan',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  controller: answerController,
                  decoration: InputDecoration(
                    labelText: 'Jawaban',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  maxLines: 3,
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Tutup popup
                },
                child: Text(
                  'Batal',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.red.shade600,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (questionController.text.isNotEmpty &&
                      answerController.text.isNotEmpty) {
                    // Perbarui data FAQ
                    faqData[index] = {
                      'question': questionController.text,
                      'answer': answerController.text,
                    };
                    Navigator.of(context).pop(); // Tutup popup
                    Get.snackbar(
                      'Berhasil',
                      'FAQ berhasil diperbarui!',
                      backgroundColor: Colors.green.shade100,
                      snackPosition: SnackPosition.BOTTOM,
                    );
                  } else {
                    Get.snackbar(
                      'Error',
                      'Harap isi semua kolom!',
                      backgroundColor: Colors.red.shade100,
                      snackPosition: SnackPosition.BOTTOM,
                    );
                  }
                },
                child: Text(
                  'Simpan',
                  style: TextStyle(fontFamily: 'Montserrat'),
                ),
              ),
            ],
          );
        },
      );
    }

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
            onPressed: showAddFaqPopup,
          ),
        ],
      ),
      body: Obx(
        () => Padding(
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
                            onPressed: () => showEditFaqPopup(index),
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
                              faqData.removeAt(index);
                              Get.snackbar(
                                'Hapus',
                                'FAQ berhasil dihapus!',
                                backgroundColor: Colors.green.shade100,
                                snackPosition: SnackPosition.BOTTOM,
                              );
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: showAddFaqPopup,
        backgroundColor: Colors.pink.shade600,
        child: Icon(Icons.add),
      ),
    );
  }
}

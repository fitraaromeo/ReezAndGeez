import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FaqPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
      {
        'question': 'Berapa lama waktu pengiriman?',
        'answer': 'Pengiriman biasanya memakan waktu 3-5 hari kerja tergantung lokasi.'
      },
    ];

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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'FAQ',
                    style: TextStyle(
                      fontSize: 40,
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
                  SizedBox(height: 8),
                  Text(
                    'Pertanyaan Umum',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Montserrat',
                      letterSpacing: 1.2,
                    ),
                  ),
                  SizedBox(height: 30),

                  // FAQ Card
                  Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.85,
                      constraints: BoxConstraints(maxWidth: 600),
                      padding: EdgeInsets.all(24.0),
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
                      child: ListView.builder(
                        itemCount: faqData.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              ExpansionTile(
                                tilePadding: EdgeInsets.symmetric(horizontal: 16),
                                title: Text(
                                  faqData[index]['question']!,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    fontFamily: 'Montserrat',
                                    color: Colors.pink.shade600,
                                  ),
                                ),
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                                    child: Text(
                                      faqData[index]['answer']!,
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey.shade700,
                                        fontFamily: 'Montserrat',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                color: Colors.grey.shade300,
                                thickness: 1,
                                height: 20,
                              ),
                            ],
                          );
                        },
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

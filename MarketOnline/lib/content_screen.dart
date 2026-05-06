import 'package:flutter/material.dart';

class ContentScreen extends StatelessWidget {
  const ContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final contents = [
      {
        "title": "Chuối tươi sạch",
        "desc": "Chuối giàu vitamin và tốt cho sức khỏe",
        "image": "assets/images/chuoi.png"
      },
      {
        "title": "Táo nhập khẩu",
        "desc": "Táo đỏ giòn ngọt, chất lượng cao",
        "image": "assets/images/tao.png"
      },
      {
        "title": "Coca Cola",
        "desc": "Nước giải khát phổ biến",
        "image": "assets/images/coca.png"
      },
      {
        "title": "Cà chua sạch",
        "desc": "Cà chua tươi, giàu vitamin C",
        "image": "assets/images/cachua.png"
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Content"),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: contents.length,
        itemBuilder: (context, index) {
          final item = contents[index];

          return Container(
            margin: const EdgeInsets.only(bottom: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  // Ảnh
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16),
                      bottomLeft: Radius.circular(16),
                    ),
                    child: Image.asset(
                      item["image"]!,
                      width: 110,
                      height: 110,
                      fit: BoxFit.cover,
                    ),
                  ),

                  // Nội dung
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item["title"]!,
                            style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            item["desc"]!,
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(height: 10),

                          // Nút xem thêm
                          Align(
                            alignment: Alignment.bottomRight,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              onPressed: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      "Xem thêm ${item["title"]}",
                                    ),
                                  ),
                                );
                              },
                              child: const Text("Xem thêm"),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
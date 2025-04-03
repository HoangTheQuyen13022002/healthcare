import 'package:flutter/material.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          width: 300,
          height: 40,
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Bạn tìm sản phẩm nào?",
              hintStyle: TextStyle(color: Colors.grey), // Màu chữ gợi ý
              prefixIcon: Icon(
                Icons.search,
                color: Colors.white,
              ), // Icon tìm kiếm
              filled: true,
              fillColor: Color.fromARGB(0, 35, 82, 239), // Nền trắng
              contentPadding: EdgeInsets.symmetric(
                horizontal: 10,
              ), // Padding 2 bên 10
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10), // Bo góc 10
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10), // Bo góc khi focus
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.card_travel)),
          IconButton(onPressed: () {}, icon: Icon(Icons.notification_add)),
        ],
      ),
    );
  }
}

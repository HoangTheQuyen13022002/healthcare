import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_healthcare/src/presentation/pages/home/models/category.dart';
import 'package:flutter_healthcare/src/presentation/pages/home/widgets/home_app_bar_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F3F3),
      appBar: HomeAppBarScreen(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 16),
            _banner(),
            SizedBox(height: 16),
            _category(context),
          ],
        ),
      ),
    );
  }

  Widget _category(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: double.infinity,
        height: 236,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 1.7,
          ),
          itemCount: 9,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: categories[index].color,
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          categories[index].icon,
                          width: 20,
                        ),
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      categories[index].label,
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _banner() {
    final List<String> images = [
      "assets/images/banner1.jpg",
      "assets/images/banner2.jpg",
      "assets/images/banner3.jpg",
    ];
    return CarouselSlider(
      options: CarouselOptions(
        height: 180.0,
        // Chiều cao banner
        autoPlay: true,
        // Chạy tự động
        autoPlayInterval: const Duration(seconds: 3),
        // Chuyển sau 3 giây
        enlargeCenterPage: true,
        // Làm nổi bật ảnh ở giữa
        viewportFraction: 0.9, // Hiển thị một phần ảnh kế tiếp
      ),
      items:
          images.map((imageUrl) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            );
          }).toList(),
    );
  }
}

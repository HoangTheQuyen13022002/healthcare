import 'package:flutter/material.dart';
import 'package:flutter_healthcare/src/core/constants/color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F3F3),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Lịch Khám',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: AppColor.primaryColor,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              child: SvgPicture.asset('assets/icons/filter.svg'),
            ),
          ),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/icons/schedule_doctor.json',
              width: 200,
              height: 200,
            ),
            SizedBox(height: 20),
            Text('Bạn chưa có lịch khám', style: TextStyle(fontSize: 20)),
            SizedBox(height: 4),
            Text('Lịch khám của bạn sẽ được hiển thị tại đây'),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryItem {
  final String label;
  final String icon;
  final Color color;

  const CategoryItem({
    required this.label,
    required this.icon,
    required this.color,
  });
}

List<CategoryItem> get categories => [
   CategoryItem(
    label: 'Đặt khám bác sĩ',
    icon: 'assets/icons/doctor.svg',
    color: Colors.red,
  ),
   CategoryItem(
    label: 'Đặt khám phòng khám',
    icon: 'assets/icons/doctor1.svg',
    color: Color(0xFF2196F3),
  ),
   CategoryItem(
    label: 'Đặt khám bệnh viên',
    icon: 'assets/icons/hospital.svg',
    color: Color(0xFFE91E63),
  ),
   CategoryItem(
    label: 'Chat với bác sĩ',
    icon: 'assets/icons/chat.svg',
    color: Color(0xFFFF9800),
  ),
   CategoryItem(
    label: 'Gọi video với bác sĩ',
    icon: 'assets/icons/phone.svg',
    color: Color(0xFF9C27B0),
  ),
   CategoryItem(
    label: 'Kết quả khám',
    icon: 'assets/icons/health.svg',
    color: Color(0xFF00BCD4),
  ),
   CategoryItem(
    label: 'Đặt lịch tiêm chủng',
    icon: 'assets/icons/verified.svg',
    color: Color(0xFFF44336),
  ),
   CategoryItem(
    label: 'Đặt lịch xét nghiệm',
    icon: 'assets/icons/laboratory.svg',
    color: Color(0xFF795548),
  ),
  CategoryItem(
    label: 'Cộng đồng',
    icon: 'assets/icons/community.svg',
    color: Color(0xFF607D8B),
  ),
];

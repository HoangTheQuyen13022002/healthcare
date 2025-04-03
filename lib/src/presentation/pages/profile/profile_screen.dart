import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F3F3),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: ClipRRect(
                          borderRadius: BorderRadiusDirectional.circular(30),
                          child: Image.asset('assets/images/user.jpg'),
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Hoàng Thế Quyền',
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(height: 2),
                          Text('+04869220028'),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      _setting_item(
                        context,
                        'assets/icons/folder.svg',
                        'Hồ sơ ý tế',
                        true,
                      ),
                      Divider(height: 30, thickness: 1),
                      _setting_item(
                        context,
                        'assets/icons/heart.svg',
                        'Danh sách quan tâm',
                        true,
                      ),
                      Divider(height: 30, thickness: 1),
                      _setting_item(
                        context,
                        'assets/icons/location.svg',
                        'Quản lý sổ địa chỉ',
                        true,
                      ),
                      Divider(height: 30, thickness: 1),
                      _setting_item(
                        context,
                        'assets/icons/shop_yellow.svg',
                        'Đơn hàng của tôi',
                        true,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      _setting_item(
                        context,
                        'assets/icons/exclamation_mark.svg',
                        'Điều khoản và quy định',
                        true,
                      ),
                      Divider(height: 30, thickness: 1),
                      _setting_item(
                        context,
                        'assets/icons/people_community.svg',
                        'Tham gia cộng đồng',
                        false,
                      ),
                      Divider(height: 30, thickness: 1),
                      _setting_item(
                        context,
                        'assets/icons/share.svg',
                        'Chia sẻ ứng dụng',
                        false,
                      ),
                      Divider(height: 30, thickness: 1),
                      _setting_item(
                        context,
                        'assets/icons/support.svg',
                        'Liên hệ hỗ trợ',
                        false,
                      ),
                      Divider(height: 30, thickness: 1),
                      _setting_item(
                        context,
                        'assets/icons/setting.svg',
                        'Cài đặt',
                        true,
                      ),
                      Divider(height: 30, thickness: 1),
                      _setting_item(
                        context,
                        'assets/icons/logout.svg',
                        'Đăng xuất',
                        false,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _setting_item(
    BuildContext context,
    String icon,
    String label,
    bool transfer,
  ) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            SizedBox(height: 30, width: 30, child: SvgPicture.asset(icon)),
            SizedBox(width: 10),
            Text(label, style: TextStyle(fontSize: 14)),
            Spacer(),
            transfer ? Icon(Icons.keyboard_arrow_right) : Container(),
            SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}

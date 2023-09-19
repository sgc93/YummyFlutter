import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  const CustomAppBar({
    super.key,
    required this.height,
  });

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(Icons.restaurant_menu),
          SizedBox(width: 20),
          Text(
            'YummyFlutter',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
      toolbarHeight: height,
      backgroundColor: const Color.fromRGBO(36, 36, 67, 1),
      shadowColor: const Color.fromRGBO(122, 18, 255, 1),
    );
  }
}

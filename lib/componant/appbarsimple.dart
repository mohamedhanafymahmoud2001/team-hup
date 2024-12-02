import 'package:flutter/material.dart';

class AppBarSimple extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final Widget leading; // الأزرار الإضافية التي قد تحتاجها
  final Color backgroundColor;

  AppBarSimple({
    required this.title,
    this.actions,
    required this.leading,
    this.backgroundColor = Colors.blue, // لون خلفية افتراضي
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(title),
      leading: leading,
      actions: actions,
      backgroundColor: backgroundColor,
      
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(kToolbarHeight); // الحجم الافتراضي للـ AppBar
}

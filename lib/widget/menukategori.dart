import 'package:flutter/material.dart';

import '../help/warna.dart';

class HomeMenuTile extends StatelessWidget {
  final String gambar;
  // final String info;
  // final String iconSvgPath;
  final Color color;
  final VoidCallback onPressed;

  const HomeMenuTile({
    super.key,
    required this.gambar,
    // required this.info,
    // required this.iconSvgPath,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: Divices.height(context) * 0.15,
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Center(
          child: Image.asset("$gambar"),
        ),
      ),
    );
  }
}

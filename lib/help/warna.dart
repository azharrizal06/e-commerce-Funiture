import 'package:flutter/material.dart';

class Warna {
  static const Color background = Color(0xff0E0E0E);
  static const Color primary = Color(0xffFFFFFF);
  static const Color grey = Color(0xff626262);
  static const Color greymuda = Color(0xffEAECED);
  static const Color green = Color(0xffD6EFED9C);
  static const Color greydark = Color(0xffDEDEDE);
}

class Divices {
  static double height(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double width(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}

class SpacingHeight extends StatelessWidget {
  final double fraction; // Proporsi tinggi berdasarkan layar

  const SpacingHeight({required this.fraction, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * fraction,
    );
  }
}

class SpacingWidth extends StatelessWidget {
  final double fraction; // Proporsi lebar berdasarkan layar

  const SpacingWidth({required this.fraction, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * fraction,
    );
  }
}

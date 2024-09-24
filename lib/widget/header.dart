import 'package:flutter/material.dart';
import 'package:furniture/help/warna.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key, required this.gambar});
  final String gambar;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 16.0),
          child: ClipPath(
            clipper: CustomClip(),
            child: ColoredBox(
              color: Warna.background,
              child: SizedBox(
                height: 250.0,
                width: double.infinity,
              ),
            ),
          ),
        ),
        ClipOval(
          child:
              Image.network(gambar, height: 100, width: 100, fit: BoxFit.cover),
        ),
        // Padding(
        //   padding: const EdgeInsets.only(left: 80.0),
        //   child: IconButton(
        //     onPressed: () {},
        //     icon: Assets.icons.editCircle.svg(),
        //     padding: EdgeInsets.zero,
        //   ),
        // ),
      ],
    );
  }
}

class CustomClip extends CustomClipper<Path> {
  const CustomClip();

  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height * 0.75);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height * 0.75);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClip oldClipper) {
    return false;
  }
}

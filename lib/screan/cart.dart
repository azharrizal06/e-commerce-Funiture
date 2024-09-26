import 'package:flutter/material.dart';
import 'package:furniture/help/warna.dart';
import 'package:lottie/lottie.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Warna.primary,
        body: Center(
          child: Container(
            width: Divices.width(context) / 2,
            height: Divices.height(context) / 1.8,
            child: Column(
              children: [
                Expanded(
                  child: Lottie.asset("assets/lottie/kosong.json",
                      height: Divices.height(context) * 0.5),
                ),
                const Expanded(
                  child: Text(
                    "Keranjang Kosong",
                    style: TextStyle(
                      fontFamily: "gayafont",
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

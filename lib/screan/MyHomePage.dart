import 'package:flutter/material.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
import 'package:furniture/help/warna.dart';
import 'package:furniture/screan/dasbroad.dart';
import 'package:lottie/lottie.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Warna.background,
      body: Column(
        children: [
          SpacingHeight(fraction: 0.08),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              // color: Warna.primary,
              height: Divices.height(context) * 0.5,
              width: Divices.width(context),
              child: Image.asset(
                "assets/gambar/kursi.png",
                width: 1145.8994140625,
                height: 1430.252197265625,
              ),
            ),
          ),
          const Text(
            "Special Furniture \n Coziness!",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Warna.primary,
                fontWeight: FontWeight.bold,
                fontSize: 40),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              child: const Text(
                "We sell furniture, chairs, tables, sofas and other sales with digital integration that makes it easier for you to find the items you like. We optimize user frequency so that users feel comfortable in this application.",
                style: TextStyle(color: Warna.grey),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: SwipeButton(
                activeThumbColor: Warna.primary,
                inactiveThumbColor: Colors.grey,
                activeTrackColor: Warna.grey, // Track yang aktif menjadi putih
                inactiveTrackColor:
                    Warna.grey, // Track yang tidak aktif berwarna abu-abu
                thumbPadding: EdgeInsets.all(5),
                width: Divices.width(context) * 0.8,
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "GET STARTED ",
                      style: TextStyle(
                        // color: Warna.primary,
                        foreground: Paint()
                          ..shader = LinearGradient(
                            colors: <Color>[Warna.primary, Warna.grey],
                          ).createShader(Rect.fromLTWH(0, 0, 300, 50)), //
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Lottie.asset("assets/lottie/arrow.json"),
                    ),
                  ],
                ),
                onSwipe: () {
                  //pindah page
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => Dhasbroad()),
                    (Route<dynamic> route) =>
                        false, // Hapus semua halaman sebelumnya
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

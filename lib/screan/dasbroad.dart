import 'package:flutter/material.dart';
import 'package:furniture/help/warna.dart';
import 'package:furniture/screan/home.dart';

import '../widget/navigasibar.dart';

class Dhasbroad extends StatefulWidget {
  @override
  _DhasbroadState createState() => _DhasbroadState();
}

class _DhasbroadState extends State<Dhasbroad> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppbar(context),
        body: Home(),
        bottomNavigationBar: NavigasiBar());
  }
}

@override
MyAppbar(BuildContext context) {
  return AppBar(
    toolbarHeight: Divices.height(context) * 0.05, // Atur tinggi AppBar
    backgroundColor: Warna.primary,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Warna.grey, width: 0.1),
            borderRadius: BorderRadius.circular(5),
          ),
          height: Divices.height(context) * 0.05,
          width: Divices.width(context) * 0.1,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset("assets/gambar/line.png"),
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Warna.grey, width: 0.1),
                  borderRadius: BorderRadius.circular(5),
                ),
                height: Divices.height(context) * 0.05,
                width: Divices.width(context) * 0.1,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    "assets/gambar/notifi.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              // SpacingWidth(fraction: 5),
              SizedBox(
                width: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Warna.grey, width: 0.1),
                  borderRadius: BorderRadius.circular(5),
                ),
                height: Divices.height(context) * 0.05,
                width: Divices.width(context) * 0.1,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    "assets/gambar/profil.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

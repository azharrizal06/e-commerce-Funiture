import 'package:flutter/material.dart';
import 'package:furniture/help/warna.dart';
import 'package:furniture/screan/produk.dart';
import 'package:furniture/widget/menukategori.dart';

class Kategori extends StatelessWidget {
  const Kategori({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Warna.primary,
        body: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 24.0,
            vertical: 50.0,
          ),
          children: [
            Container(
              padding: const EdgeInsets.all(24.0),
              decoration: BoxDecoration(
                border: Border.all(color: Warna.grey, width: 0.1),
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Kategori',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'gayafont',
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: HomeMenuTile(
                          color: Color(0xffFFB6B9),
                          gambar: "assets/gambar/kategori1.png",
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Produk(
                                          kategori: "sofa",
                                        )));
                          },
                        ),
                      ),
                      Expanded(
                        child: HomeMenuTile(
                          color: Color(0xff61C0BF),
                          gambar: "assets/gambar/kategori3.png",
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Produk(
                                          kategori: "lampu kamar",
                                        )));
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: HomeMenuTile(
                          color: Color(0xffBBDED6),
                          gambar: "assets/gambar/kategori4.png",
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Produk(
                                          kategori: "Peralatan Dapur",
                                        )));
                          },
                        ),
                      ),
                      Expanded(
                        child: HomeMenuTile(
                          color: Color(0xffFAE3D9),
                          gambar: "assets/gambar/kategori2.png",
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Produk(
                                          kategori: "meja",
                                        )));
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

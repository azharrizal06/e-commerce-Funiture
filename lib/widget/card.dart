import 'dart:math';

import 'package:flutter/material.dart';

import '../model/ModelProduk.dart';
import '../screan/detail.dart';

class CradProduk extends StatelessWidget {
  CradProduk({
    super.key,
    this.color,
    this.produk,
  });

  final Color? color;
  ProductModel? produk;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Detail(
                      produk: produk!,
                    )));
      },
      child: Container(
          // color: Colors.amber,
          child: LayoutBuilder(
        builder: (context, constraints) => Column(
          children: [
            Container(
              height: constraints.maxHeight * 3 / 4,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 0, 25),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: color),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 20, 0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: color),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Image.asset("${produk?.gambar}"),
                  ),
                ],
              ),
            ),
            Text(
              "${produk?.namaProduk}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                fontFamily: "roboto",
              ),
            ),
            Text(
              " \$ ${produk?.harga}",
              style: TextStyle(
                fontSize: 15,
                fontFamily: "roboto",
              ),
            ),
          ],
        ),
      )),
    );
  }
}

final List<Color> colorsList =
    List.generate(8, (index) => getRandomSoftColor());
Color getRandomSoftColor() {
  Random random = Random();
  // Membuat warna acak dengan nilai RGB di kisaran 150-255 agar warnanya soft
  return Color.fromARGB(
    255, // Opaque (tanpa transparansi)
    random.nextInt(106) + 150, // Nilai merah antara 150-255
    random.nextInt(106) + 150, // Nilai hijau antara 150-255
    random.nextInt(106) + 150, // Nilai biru antara 150-255
  );
}

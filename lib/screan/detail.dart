import 'package:flutter/material.dart';
import 'package:furniture/help/warna.dart';

import '../model/ModelProduk.dart';

class Detail extends StatelessWidget {
  Detail({super.key, required this.produk});
  ProductModel produk;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Warna.primary,
      appBar: AppBar(
        title: Text("Detail"),
        centerTitle: true,
        backgroundColor: Warna.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Container(
              // color: Warna.background,
              height: Divices.height(context) * 0.5,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image.asset("assets/gambar/Ellipse.png"),
                  Image.asset(produk.gambar),
                ],
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Color(
                    0xffF1CC3E,
                  ),
                  size: Divices.width(context) * 0.1,
                ),
                Text(
                  "4.8",
                  style: TextStyle(
                      fontFamily: "roboto",
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffF1CC3E)),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: Divices.height(context) * 0.03,
                  // width: Divices.width(context) * 0.16,
                  decoration: BoxDecoration(
                    color: Warna.greydark,
                    border: Border.all(color: Warna.grey, width: 0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "150 reviews",
                      style: TextStyle(
                        color: Warna.background,
                        fontFamily: "roboto",
                      ),
                    ),
                  ),
                )
              ],
            ),
            Text(
              "${produk.namaProduk}",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: "roboto",
              ),
            ),
            Text(
              "Description",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: "roboto",
              ),
            ),
            Text(
              "Chairs made from quality materials and guaranteed quality provide comfort for those who use them and give a different impression from other chairs. This chair is a recommendation for people who are looking for a chair and thousands of people have bought it.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontFamily: "roboto",
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          children: [
            Container(
              width: Divices.width(context) * 1.5 / 4,
              child: Text(
                "${produk.harga} USD",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: Divices.height(context) * 0.08,
                  width: Divices.width(context) * 9,
                  decoration: BoxDecoration(
                    color: Warna.background,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      "Add to cart",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Warna.primary),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

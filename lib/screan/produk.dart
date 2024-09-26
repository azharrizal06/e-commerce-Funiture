import 'dart:math';

import 'package:flutter/material.dart';
import 'package:furniture/model/ModelProduk.dart';

import '../help/warna.dart';
import '../widget/card.dart';

class Produk extends StatelessWidget {
  Produk({super.key, required this.kategori});

  final String kategori;

  List<ProductModel> produkList = [
    ProductModel(
        namaProduk: "Recliner Chair",
        harga: 199.00,
        gambar: "assets/gambar/meja8.png"),
    ProductModel(
        namaProduk: "Recliner Chair",
        harga: 199.00,
        gambar: "assets/gambar/meja4.png"),
    ProductModel(
        namaProduk: "Office Chair",
        harga: 89.00,
        gambar: "assets/gambar/meja6.png"),
    ProductModel(
        namaProduk: "Gaming Chair",
        harga: 149.00,
        gambar: "assets/gambar/meja7.png"),
    ProductModel(
        namaProduk: "Gaming Chair",
        harga: 149.00,
        gambar: "assets/gambar/Meja3.png"),
    ProductModel(
        namaProduk: "Swivel Chair",
        harga: 59.00,
        gambar: "assets/gambar/Meja1.png"),
    ProductModel(
        namaProduk: "Office Chair",
        harga: 89.00,
        gambar: "assets/gambar/Meja2.png"),
    ProductModel(
        namaProduk: "Swivel Chair",
        harga: 59.00,
        gambar: "assets/gambar/meja5.png"),
  ];
  List<ProductModel> produkList1 = [
    ProductModel(
        namaProduk: "Swivel Chair",
        harga: 59.00,
        gambar: "assets/gambar/produk1.png"),
    ProductModel(
        namaProduk: "Office Chair",
        harga: 89.00,
        gambar: "assets/gambar/produk2.png"),
    ProductModel(
        namaProduk: "Gaming Chair",
        harga: 149.00,
        gambar: "assets/gambar/produk3.png"),
    ProductModel(
        namaProduk: "Recliner Chair",
        harga: 199.00,
        gambar: "assets/gambar/produk4.png"),
    ProductModel(
        namaProduk: "Swivel Chair",
        harga: 59.00,
        gambar: "assets/gambar/produk1.png"),
    ProductModel(
        namaProduk: "Office Chair",
        harga: 89.00,
        gambar: "assets/gambar/produk2.png"),
    ProductModel(
        namaProduk: "Gaming Chair",
        harga: 149.00,
        gambar: "assets/gambar/produk3.png"),
    ProductModel(
        namaProduk: "Recliner Chair",
        harga: 199.00,
        gambar: "assets/gambar/produk4.png"),
    ProductModel(
        namaProduk: "Recliner Chair",
        harga: 199.00,
        gambar: "assets/gambar/produk2.png"),
  ];
  List<ProductModel> produkList3 = [
    ProductModel(
        namaProduk: "Swivel Chair",
        harga: 59.00,
        gambar: "assets/gambar/lampu.png"),
    ProductModel(
        namaProduk: "Office Chair",
        harga: 89.00,
        gambar: "assets/gambar/lampu1.png"),
    ProductModel(
        namaProduk: "Gaming Chair",
        harga: 149.00,
        gambar: "assets/gambar/lampu2.png"),
    ProductModel(
        namaProduk: "Recliner Chair",
        harga: 199.00,
        gambar: "assets/gambar/lampu3.png"),
    ProductModel(
        namaProduk: "Swivel Chair",
        harga: 59.00,
        gambar: "assets/gambar/lampu4.png"),
    ProductModel(
        namaProduk: "Office Chair",
        harga: 89.00,
        gambar: "assets/gambar/lampu5.png"),
    ProductModel(
        namaProduk: "Gaming Chair",
        harga: 149.00,
        gambar: "assets/gambar/lampu6.png"),
    ProductModel(
        namaProduk: "Recliner Chair",
        harga: 199.00,
        gambar: "assets/gambar/lampu7.png"),
    ProductModel(
        namaProduk: "Recliner Chair",
        harga: 199.00,
        gambar: "assets/gambar/lampu8.png"),
  ];
  List<ProductModel> produkList4 = [
    ProductModel(
        namaProduk: "Swivel Chair",
        harga: 59.00,
        gambar: "assets/gambar/dapur.png"),
    ProductModel(
        namaProduk: "Office Chair",
        harga: 89.00,
        gambar: "assets/gambar/dapur1.png"),
    ProductModel(
        namaProduk: "Gaming Chair",
        harga: 149.00,
        gambar: "assets/gambar/dapur2.png"),
    ProductModel(
        namaProduk: "Recliner Chair",
        harga: 199.00,
        gambar: "assets/gambar/dapur3.png"),
    ProductModel(
        namaProduk: "Swivel Chair",
        harga: 59.00,
        gambar: "assets/gambar/dapur4.png"),
    ProductModel(
        namaProduk: "Office Chair",
        harga: 89.00,
        gambar: "assets/gambar/dapur5.png"),
    ProductModel(
        namaProduk: "Gaming Chair",
        harga: 149.00,
        gambar: "assets/gambar/dapur6.png"),
    ProductModel(
        namaProduk: "Recliner Chair",
        harga: 199.00,
        gambar: "assets/gambar/dapur7.png"),
    ProductModel(
        namaProduk: "Recliner Chair",
        harga: 199.00,
        gambar: "assets/gambar/dapur8.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Warna.primary,
        appBar: AppBar(
          backgroundColor: Warna.primary,
          title: Text('${kategori}'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1 / 1.4,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                crossAxisCount: 2),
            itemBuilder: (context, index) => kategori == 'meja'
                ? CradProduk(
                    produk: produkList[index],
                    color: colorsList[index],
                  )
                : kategori == 'sofa'
                    ? CradProduk(
                        produk: produkList1[index],
                        color: colorsList[index],
                      )
                    : kategori == 'lampu kamar'
                        ? CradProduk(
                            produk: produkList3[index],
                            color: colorsList[index],
                          )
                        : CradProduk(
                            produk: produkList4[index],
                            color: colorsList[index],
                          ),

            // CradProduk(
            //     produkLampu: produkList3[index],
            //     color: colorsList[index],
            //   ),
            itemCount: 8,
          ),
        ));
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

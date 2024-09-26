import 'package:flutter/material.dart';
import 'package:furniture/help/warna.dart';

import '../model/ModelProduk.dart';
import '../widget/card.dart'; // Pastikan path ini benar

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Warna.primary,
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16),
        children: [
          SpacingHeight(fraction: 0.02),
          Text(
            "Discover Products",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              fontFamily: "gayafont",
            ),
          ),
          SpacingHeight(fraction: 0.02),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Warna.grey, width: 0.1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  height: Divices.height(context) * 0.05,
                  width: Divices.width(context) * 0.1,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset("assets/gambar/setting.png"),
                  ),
                ),
              ),
            ],
          ),
          SpacingHeight(fraction: 0.02),
          MyTabPage(context)
        ],
      ),
    );
  }
}

List<ProductModel> produkList = [
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

@override
MyTabPage(BuildContext context) {
  return DefaultTabController(
    length: 4, // Jumlah tab
    child: Column(
      children: [
        Container(
          height: Divices.height(context) * 0.05,
          child: TabBar(
              indicator: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(20), // Membuat tab yang dipilih bulat
                color: Warna.background, // Warna tab yang dipilih
              ),
              labelColor: Warna.greymuda, // Warna teks ketika dipilih
              unselectedLabelColor:
                  Colors.black, // Warna teks ketika tidak dipilih
              labelStyle: const TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelStyle:
                  const TextStyle(fontWeight: FontWeight.bold),
              indicatorSize: TabBarIndicatorSize.tab,
              dividerHeight: 0,
              tabs: [
                Tab(
                  child: TabContain(
                    label: "Tables",
                  ),
                ),
                Tab(
                  child: TabContain(
                    label: "Tables",
                  ),
                ),
                Tab(
                  child: TabContain(
                    label: "Tables",
                  ),
                ),
                Tab(
                  child: TabContain(
                    label: "Tables",
                  ),
                ),
              ]),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SizedBox(
            height: Divices.height(context) * 0.65, // Ukuran tinggi TabBarView
            child: TabBarView(children: [
              Container(
                  child: GridView.builder(
                      itemCount: 8,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        crossAxisCount: 2,
                        childAspectRatio: 1 / 1.4,
                      ),
                      itemBuilder: (context, index) {
                        final color = colorsList[index];
                        return CradProduk(
                          color: color,
                          produk: produkList[index],
                        );
                      })),
              Container(
                  child: GridView.builder(
                      itemCount: 8,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        crossAxisCount: 2,
                        childAspectRatio: 1 / 1.4,
                      ),
                      itemBuilder: (context, index) {
                        final color = colorsList[index];
                        return CradProduk(
                          color: color,
                          produk: produkList[index],
                        );
                      })),
              Container(
                  child: GridView.builder(
                      itemCount: 8,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        crossAxisCount: 2,
                        childAspectRatio: 1 / 1.4,
                      ),
                      itemBuilder: (context, index) {
                        final color = colorsList[index];
                        return CradProduk(
                          color: color,
                          produk: produkList[index],
                        );
                      })),
              Container(
                  child: GridView.builder(
                      itemCount: 8,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        crossAxisCount: 2,
                        childAspectRatio: 1 / 1.4,
                      ),
                      itemBuilder: (context, index) {
                        final color = colorsList[index];
                        return CradProduk(
                          color: color,
                          produk: produkList[index],
                        );
                      })),
            ]),
          ),
        ),
      ],
    ),
  );
}

class TabContain extends StatelessWidget {
  var label;
  TabContain({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: Divices.height(context) * 2,
        width: Divices.width(context) * 9,
        decoration: BoxDecoration(
          // color: Warna.greymuda,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
            child: Text(
          "$label",
          style: TextStyle(
            fontFamily: "roboto",
          ),
        )));
  }
}

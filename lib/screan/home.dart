import 'package:flutter/material.dart';
import 'package:furniture/help/warna.dart'; // Pastikan path ini benar

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
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
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
          MyTabPage()
        ],
      ),
    );
  }
}

class MyTabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Jumlah tab
      child: Column(
        children: [
          Container(
            height: Divices.height(context) * 0.05,
            child: TabBar(
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      20), // Membuat tab yang dipilih bulat
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
          SizedBox(
            height: Divices.height(context) * 0.7, // Ukuran tinggi TabBarView
            child: TabBarView(children: [
              Container(
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        return Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Warna.background, width: 0.1),
                                borderRadius: BorderRadius.circular(5),
                                color: Warna.background),
                            height: Divices.height(context) * 0.05,
                            width: Divices.width(context) * 0.1,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Image.asset("assets/gambar/kursi.png"),
                            ));
                      })),
              Center(
                child: Image.asset("assets/gambar/kursi.png"),
              ),
              Center(
                child: Image.asset("assets/gambar/setting.png"),
              ),
              Center(
                child: Image.asset("assets/gambar/kursi.png"),
              ),
            ]),
          ),
        ],
      ),
    );
  }
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
        child: Center(child: Text("$label")));
  }
}

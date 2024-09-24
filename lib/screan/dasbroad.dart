import 'package:flutter/material.dart';
import 'package:furniture/help/warna.dart';
import 'package:furniture/screan/cart.dart';
import 'package:furniture/screan/home.dart';
import 'package:furniture/screan/profil.dart';

class Dhasbroad extends StatefulWidget {
  @override
  _DhasbroadState createState() => _DhasbroadState();
}

class _DhasbroadState extends State<Dhasbroad> with TickerProviderStateMixin {
  int _selectedTab = 0;

  final List<Widget> _pages = [
    Home(),
    Center(child: Text('Dashboard')),
    Cart(),
    ProfilePage()
  ];

  void _handleIndexChanged(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(context),
      body: _pages[_selectedTab], // Ganti body sesuai index
      bottomNavigationBar:
          NavigasiBar(context, _selectedTab, _handleIndexChanged),
    );
  }
}

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
        Row(
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
            SizedBox(width: 20),
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
      ],
    ),
  );
}

Widget NavigasiBar(
    BuildContext context, int _selectedTab, Function(int) onTabChanged) {
  return Container(
    color: Warna.primary,
    width: Divices.width(context),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(50, 5, 50, 5),
      child: Container(
        decoration: BoxDecoration(
          color: Warna.background,
          borderRadius: BorderRadius.circular(100),
        ),
        height: Divices.height(context) * 0.08,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildNavItem(context, Icons.home, 0, _selectedTab, onTabChanged),
            _buildNavItem(
                context, Icons.space_dashboard, 1, _selectedTab, onTabChanged),
            _buildNavItem(
                context, Icons.shopping_cart, 2, _selectedTab, onTabChanged),
            _buildNavItem(context, Icons.person, 3, _selectedTab, onTabChanged),
          ],
        ),
      ),
    ),
  );
}

Widget _buildNavItem(BuildContext context, IconData icon, int index,
    int _selectedTab, Function(int) onTabChanged) {
  return Padding(
    padding: const EdgeInsets.all(5),
    child: Container(
      decoration: BoxDecoration(
        color: _selectedTab == index ? Warna.primary : Warna.background,
        borderRadius: BorderRadius.circular(100),
      ),
      height: Divices.height(context) * 0.08,
      width: Divices.width(context) * 0.15,
      child: IconButton(
        onPressed: () {
          onTabChanged(index);
        },
        icon: Icon(
          icon,
          color: _selectedTab == index ? Warna.background : Warna.primary,
        ),
      ),
    ),
  );
}

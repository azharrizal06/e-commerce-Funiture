import 'package:flutter/material.dart';

import '../help/warna.dart';

class NavigasiBar extends StatefulWidget {
  @override
  State<NavigasiBar> createState() => _NavigasiBarState();
}

class _NavigasiBarState extends State<NavigasiBar> {
  var _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
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
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      decoration: BoxDecoration(
                        color: _selectedTab == _SelectedTab.home
                            ? Warna.primary
                            : Warna.background,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      height: Divices.height(context) * 0.08,
                      width: Divices.width(context) * 0.15,
                      child: IconButton(
                        onPressed: () {
                          _handleIndexChanged(0);
                        },
                        icon: Icon(
                          Icons.home,
                          color: _selectedTab == _SelectedTab.home
                              ? Warna.background
                              : Warna.primary,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      decoration: BoxDecoration(
                        color: _selectedTab == _SelectedTab.favorite
                            ? Warna.primary
                            : Warna.background,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      height: Divices.height(context) * 0.08,
                      width: Divices.width(context) * 0.15,
                      child: IconButton(
                        onPressed: () {
                          _handleIndexChanged(1);
                        },
                        icon: Icon(
                          Icons.space_dashboard,
                          color: _selectedTab == _SelectedTab.favorite
                              ? Warna.background
                              : Warna.primary,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      decoration: BoxDecoration(
                        color: _selectedTab == _SelectedTab.search
                            ? Warna.primary
                            : Warna.background,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      height: Divices.height(context) * 0.08,
                      width: Divices.width(context) * 0.15,
                      child: IconButton(
                        onPressed: () {
                          _handleIndexChanged(2);
                        },
                        icon: Icon(
                          Icons.shopping_cart,
                          color: _selectedTab == _SelectedTab.search
                              ? Warna.background
                              : Warna.primary,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      decoration: BoxDecoration(
                        color: _selectedTab == _SelectedTab.person
                            ? Warna.primary
                            : Warna.background,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      height: Divices.height(context) * 0.08,
                      width: Divices.width(context) * 0.15,
                      child: IconButton(
                        onPressed: () {
                          _handleIndexChanged(3);
                        },
                        icon: Icon(
                          Icons.person,
                          color: _selectedTab == _SelectedTab.person
                              ? Warna.background
                              : Warna.primary,
                        ),
                      ),
                    ),
                  ),
                ])),
      ),
    );
  }
}

enum _SelectedTab { home, favorite, search, person }

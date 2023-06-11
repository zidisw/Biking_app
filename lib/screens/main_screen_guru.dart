import 'package:biking_app/screens/home_screen/home_screen.dart';
import 'package:biking_app/screens/pelaporan/guru/pelaporan_guru.dart';
import 'package:biking_app/screens/profil/guru/profil_guru.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class MainScreenGuru extends StatefulWidget {
  const MainScreenGuru({super.key});
  static String routeName = 'MainScreenGuru';

  @override
  State<MainScreenGuru> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreenGuru> {
  int _pageIndex = 1;

  final List<Widget> _pageList = [
    const ProfilGuruScreen(
      nama: '',
      email: '',
      nomorTelepon: '',
      gurumapel: '',
    ),
    const HomeScreen(),
    const PelaporanScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: _pageIndex,
        onTap: (value) {
          setState(() {
            _pageIndex = value;
          });
        },
        items: const <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.person, color: Colors.white),
              Text('Profile',
                  style: TextStyle(color: Colors.white, fontSize: 9)),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.home, color: Colors.white),
              Text('Home', style: TextStyle(color: Colors.white, fontSize: 9)),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.report, color: Colors.white),
              Text(
                'Report',
                style: TextStyle(color: Colors.white, fontSize: 9),
              ),
            ],
          ),
        ],
        backgroundColor: Colors.white,
        color: Colors.blue,
        buttonBackgroundColor: Colors.blue,
        height: 50.0,
        animationDuration: const Duration(milliseconds: 300),
      ),
      body: _pageList[_pageIndex],
    );
  }
}

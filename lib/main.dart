import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'profile.dart';
import 'home.dart';
import 'login.dart';
import 'layanan.dart';
import 'companyprofile.dart'; // Pastikan CompanyProfile diimpor

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectIndex = 1; // Mengubah index awal menjadi 1 (Home)

  // Mengubah urutan halaman, dengan CompanyProfile pada urutan pertama (index 0)
  static List<Widget> _widgetOptions = <Widget>[
    CompanyProfile(), // Ganti Cart dengan CompanyProfile
    Home(),
    Profile()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectIndex), // Menampilkan halaman sesuai index
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.input), label: "Company"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.output), label: "Profile"),
          ],
          currentIndex: _selectIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

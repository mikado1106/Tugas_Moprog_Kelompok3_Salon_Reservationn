import 'package:flutter/material.dart';
import 'homelog.dart'; // Pastikan mengimpor halaman HomeLogPage

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  // Controller untuk form input
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFEAE3), // Background color
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container untuk memberikan jeda di atas logo
            Container(
              height: 80, // Atur tinggi sesuai kebutuhan
              color: Color(0xFF121481), // Warna jeda
            ),

            // Logo Container with Bottom Color
            Container(
              color: Color(0xFF121481), // Warna di bawah logo
              child: Column(
                children: [
                  Image.asset(
                    "img/logo.jpg", // Pastikan logo Anda sudah ada di folder assets
                    height: 120,
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),

            // Garis
            Container(
              margin: EdgeInsets.symmetric(horizontal: 50),
              padding: EdgeInsets.only(top: 30),
              child: Divider(
                color: Color(0xFFFFB1B1), // Menggunakan warna dari palet
                thickness: 5,
              ),
            ),
            SizedBox(height: 20),

            // Judul Sign Up
            Text(
              "Sign Up",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xFF121481), // Menggunakan warna dari palet
              ),
            ),
            SizedBox(height: 20),

            // Input Email
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFFB1B1)), // Border color when focused
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),

            // Input Nomor HP
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                controller: phoneController,
                decoration: InputDecoration(
                  labelText: "Nomor HP",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.phone),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFFB1B1)), // Border color when focused
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),

            // Input Username
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  labelText: "Username",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFFB1B1)), // Border color when focused
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),

            // Input Password
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFFB1B1)), // Border color when focused
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),

            // Button Sign Up
            ElevatedButton(
              onPressed: () {
                // Aksi ketika tombol Sign Up ditekan
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeLog()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFFFB1B1), // Menggunakan warna dari palet
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                textStyle: TextStyle(fontSize: 18),
              ),
              child: Text(
                "Sign Up",
                style: TextStyle(color: Colors.white), // Text color for button
              ),
            ),

            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'account.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Sans-Serif'),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static const Color primaryBlue = Color(0xFF3586FF);
  static const Color brandBlue = Color(0xFF0095DA);
  static const Color facebookBlue = Color(0xFF1877F2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 208, 229, 253),
      body: SingleChildScrollView(
        child: Column(children: [_buildHeader(), _buildLoginForm(context)]),
      ),
    );
  }

  Widget _buildHeader() {
    return Stack(
      children: [
        SizedBox(
          height: 320,
          width: double.infinity,
          child: Image.asset(
            'assets/images/background.jpg',
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          ),
        ),
        Positioned(
          top: 30,
          left: 0,
          right: 0,
          child: Center(
            child: Image.asset('assets/images/logo.png', height: 35),
          ),
        ),
        Positioned(
          top: 30,
          left: 20,
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 4),
              ],
            ),
            child: IconButton(
              padding: EdgeInsets.zero,
              icon: const Icon(Icons.close, color: Colors.grey, size: 20),
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLoginForm(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          const SizedBox(height: 20),
          _buildInputField(),
          const SizedBox(height: 16),
          _buildLoginButton(context),
          const SizedBox(height: 24),
          _buildDivider(),
          const SizedBox(height: 20),
          _buildSocialButtons(),
          const SizedBox(height: 32),
          _buildRegisterLink(),
          const SizedBox(height: 220),
          _buildFooter(),
        ],
      ),
    );
  }

  Widget _buildInputField() {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: 'Nomor HP atau email',
        hintStyle: TextStyle(color: Colors.grey[400]),
        contentPadding: const EdgeInsets.all(16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryBlue,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          elevation: 0,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AccountPage()),
          );
        },
        child: const Text(
          'Log in',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return Row(
      children: [
        Expanded(child: Divider(color: Colors.grey[300])),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            'Log in lebih cepat dengan',
            style: TextStyle(color: Colors.grey[500], fontSize: 12),
          ),
        ),
        Expanded(child: Divider(color: Colors.grey[300])),
      ],
    );
  }

  Widget _buildSocialButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildSocialIcon(Icons.apple, Colors.black),
        const SizedBox(width: 16),
        _buildSocialIcon(Icons.facebook, facebookBlue),
        const SizedBox(width: 16),
        _buildSocialIcon(Icons.g_mobiledata, Colors.red, isCustom: true),
      ],
    );
  }

  Widget _buildSocialIcon(IconData icon, Color color, {bool isCustom = false}) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Center(
        child: isCustom
            ? const Text(
                'G',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                ),
              )
            : Icon(icon, color: color, size: 24),
      ),
    );
  }

  Widget _buildRegisterLink() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Belum punya akun? ',
          style: TextStyle(color: Colors.grey[600], fontSize: 13),
        ),
        GestureDetector(
          onTap: () {},
          child: const Text(
            'Daftar, yuk!',
            style: TextStyle(
              color: primaryBlue,
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFooter() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40.0),
      child: Column(
        children: [
          Text(
            'Dengan log in, kamu menyetujui Kebijakan Privasi dan Syarat &\nKetentuan Blibli Tiket.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 11,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'blibli',
                style: TextStyle(
                  color: brandBlue,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Container(
                  width: 6,
                  height: 6,
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              const Text(
                'tiket',
                style: TextStyle(color: brandBlue, fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

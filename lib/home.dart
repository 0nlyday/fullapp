import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            const Color(0xFFADC59D), // สีพื้นหลังเขียวอ่อน
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // ฟังก์ชันกลับหน้าก่อน
          },
        ),
        title: const Text(
          'PlantPursuit',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // ปุ่มค้นหา
            ActionButton(
              icon: Icons.search,
              label: 'ค้นหา', // "Search" in Thai
              onPressed: () {
                // ฟังก์ชันค้นหา
              },
            ),
            const SizedBox(
              height: 20,
              width: 40,
            ),
            // ปุ่มกล้อง
            ActionButton(
              icon: Icons.camera_alt,
              label: 'กล้อง', // "Camera" in Thai
              onPressed: () {
                // ฟังก์ชันกล้อง
              },
            ),
            const SizedBox(
              height: 20,
              width: 40,
            ),
            // ปุ่มแกลลอรี่
            ActionButton(
              icon: Icons.photo_library,
              label: 'แกลลอรี่', // "Gallery" in Thai
              onPressed: () {
                // ฟังก์ชันแกลลอรี่
              },
            ),
            const SizedBox(
              height: 20,
              width: 40,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFFADC59D),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        onTap: (index) {
          if (index == 2) { // ไอคอนที่ 3 คือ ไอคอน 'person'
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignInScreen()),
            );
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
    );
  }
}

// วิดเจ็ต ActionButton ที่ใช้งานซ้ำได้
class ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  const ActionButton({
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: const Color(0xFFE6F7E6), // สีพื้นหลังและสีข้อความ
        side: const BorderSide(color: Colors.green, width: 2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        minimumSize: const Size(200, 50), // ไซส์ขั้นต่ำ
      ),
      icon: Icon(icon),
      label: Text(label),
      onPressed: onPressed,
    );
  }
}

class SignInScreen extends StatelessWidget { // หน้า Sign In
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
        backgroundColor: const Color(0xFFADC59D),
      ),
      body: Center(
        child: Text('This is the Sign In screen'),
      ),
    );
  }
}

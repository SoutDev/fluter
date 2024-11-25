import 'package:flutter/material.dart';
import 'package:flutter_dev/Drawer/drawer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  int idx = 0;

  void onTab(int indx) {
    setState(() {
      idx = indx;
    });
  }

  Widget bottomBar() {
    return BottomNavigationBar(
      currentIndex: idx,
      onTap: onTab,
      backgroundColor: Colors.amber.shade900,
      type: BottomNavigationBarType.fixed,
      selectedIconTheme: IconThemeData(color: Colors.white, size: 35),
      selectedLabelStyle: const TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 21),
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "ໜັາຫຼັກ"),
        BottomNavigationBarItem(
            icon: Icon(Icons.arrow_back), label: "ເຂົ້າສູ່ລະບົບ"),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: "ຂໍ້ຄວາມ"),
        BottomNavigationBarItem(icon: Icon(Icons.more_vert), label: "ບໍລິການ"),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerBar(),
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Column(
        children: [
          Center(
            child: Text("Hello"),
          ),
        ],
      ),
      bottomNavigationBar: bottomBar(),
    );
  }
}

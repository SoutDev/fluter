import 'package:flutter/material.dart';

class Arrow extends StatefulWidget {
  const Arrow({super.key});

  @override
  State<Arrow> createState() => _ArrowState();
}

class _ArrowState extends State<Arrow> {
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
      appBar: AppBar(
        title: Text(
          "ສັງຊື້ສິນຄ້າ",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.amber.shade900,
        centerTitle: true,
      ),
      body: Center(
        child: Text("Hello"),
      ),
      bottomNavigationBar: bottomBar(),
    );
  }
}

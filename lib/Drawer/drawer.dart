import 'package:flutter/material.dart';
import 'package:flutter_dev/Register/Arrow.dart';
import 'package:flutter_dev/Register/Assignment.dart';
import 'package:flutter_dev/Register/Bar_chart.dart';
import 'package:flutter_dev/Register/Download.dart';
import 'package:flutter_dev/Register/Managepage.dart';
import 'package:flutter_dev/Register/Search.dart';

class DrawerBar extends StatefulWidget {
  const DrawerBar({super.key});

  @override
  State<DrawerBar> createState() => _DrawerBarState();
}

class _DrawerBarState extends State<DrawerBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8TdvccAWijEGsqhzLHC1uL87iZUYhjV56LQ&s",
                ),
                fit: BoxFit.cover,
              ),
            ),
            accountName: Text("Novice SoutDev"),
            accountEmail: Text("Soutsanouk@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: Container(
                width: 80,
                height: 60,
                child: ClipOval(
                  child: Image.network(
                    "https://media.istockphoto.com/id/1300845620/vector/user-icon-flat-isolated-on-white-background-user-symbol-vector-illustration.jpg?s=612x612&w=0&k=20&c=yBeyba0hUkh14_jgv1OKqIH0CCSWU_4ckRkAoy2p73o=",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Card(
                  elevation: 10,
                  child: ListTile(
                    leading: Icon(
                      Icons.folder,
                      color: Colors.amber.shade900,
                      size: 30,
                    ),
                    title: Text(
                      "ຈັດການຂໍ້ມູນພື້ນຖານ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                        color: Colors.blue[800],
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                      MaterialPageRoute route =
                          MaterialPageRoute(builder: (c) => MyWidget());
                      Navigator.of(context).push(route);
                    },
                  ),
                ),
                Divider(), //ເສັ້ນຂີດຄັ້ນ

                Card(
                  elevation: 10,
                  child: ListTile(
                    leading: Icon(
                      Icons.assignment_turned_in,
                      color: Colors.amber.shade900,
                      size: 30,
                    ),
                    title: Text(
                      "ຂາຍ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                        color: Colors.blue[800],
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                      MaterialPageRoute route =
                          MaterialPageRoute(builder: (c) => Assignment());
                      Navigator.of(context).push(route);
                    },
                  ),
                ),
                Divider(), //ເສັ້ນຂີດຄັ້ນ

                Card(
                  elevation: 10,
                  child: ListTile(
                    leading: Icon(
                      Icons.arrow_forward,
                      color: Colors.amber.shade900,
                      size: 30,
                    ),
                    title: Text(
                      "ສັງຊື້ສິນຄ້າ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                        color: Colors.blue[800],
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                      MaterialPageRoute route =
                          MaterialPageRoute(builder: (c) => Arrow());
                      Navigator.of(context).push(route);
                    },
                  ),
                ),
                Divider(), //ເສັ້ນຂີດຄັ້ນ

                Card(
                  elevation: 10,
                  child: ListTile(
                    leading: Icon(
                      Icons.download,
                      color: Colors.amber.shade900,
                      size: 30,
                    ),
                    title: Text(
                      "ນໍາເຂົ້າສິນຄ້າ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                        color: Colors.blue[800],
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                      MaterialPageRoute route =
                          MaterialPageRoute(builder: (c) => Download());
                      Navigator.of(context).push(route);
                    },
                  ),
                ),
                Divider(), //ເສັ້ນຂີດຄັ້ນ

                Card(
                  elevation: 10,
                  child: ListTile(
                    leading: Icon(
                      Icons.search,
                      color: Colors.amber.shade900,
                      size: 30,
                    ),
                    title: Text(
                      "ຄົ້ນຫາ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                        color: Colors.blue[800],
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                      MaterialPageRoute route =
                          MaterialPageRoute(builder: (c) => Search());
                      Navigator.of(context).push(route);
                    },
                  ),
                ),
                Divider(), //ເສັ້ນຂີດຄັ້ນ

                Card(
                  elevation: 10,
                  child: ListTile(
                    leading: Icon(
                      Icons.bar_chart,
                      color: Colors.amber.shade900,
                      size: 30,
                    ),
                    title: Text(
                      "ລາຍງານ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                        color: Colors.blue[800],
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                      MaterialPageRoute route =
                          MaterialPageRoute(builder: (c) => BarChart());
                      Navigator.of(context).push(route);
                    },
                  ),
                ),
              ],
            ),
          ),
          Divider(), //ເສັ້ນຂີດຄັ້ນ
        ],
      ),
    );
  }
}

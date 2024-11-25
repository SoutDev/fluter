import 'package:flutter/material.dart';
import 'package:flutter_dev/Register/Login.dart';
import 'package:flutter_dev/Register/Sigin.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

Widget ImageLogo() {
  return CircleAvatar(
    radius: 50.5,
    backgroundImage: NetworkImage(
        "https://scontent.flpq1-1.fna.fbcdn.net/v/t39.30808-6/404686508_362479666146788_2965571006660974814_n.jpg?stp=dst-jpg_s960x960&_nc_cat=104&ccb=1-7&_nc_sid=a5f93a&_nc_eui2=AeFJP5yA4R_cjkSg3IGnE3GTNvAhfM9qhz028CF8z2qHPT4LbPOsfXzi5rXWfyvaTu4YEWiKQZM6rCrF-Ll2vm12&_nc_ohc=q17OVLy5LUQQ7kNvgEyRJQ9&_nc_zt=23&_nc_ht=scontent.flpq1-1.fna&_nc_gid=AAtiUNe-LBtrtSPrSDYcdSe&oh=00_AYCTxCv87qB23xVaJe477kdHSXpeIgo1W6_KAEqNFRKA5A&oe=674312CB"),
  );
}

Widget UserText() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 50),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        filled: true,
        fillColor: Colors.white,
        prefixIcon: Icon(
          Icons.person,
          color: Colors.amber[900],
          size: 35,
        ),
        label: Text('Username'),
      ),
    ),
  );
}

Widget PasswordText() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 50),
    child: SizedBox(
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Icon(
            Icons.lock,
            color: Colors.amber[900],
            size: 35,
          ),
          label: Text('Password'),
        ),
      ),
    ),
  );
}

Widget LogInButton(BuildContext context) {
  return SizedBox(
    width: 150,
    height: 45,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
      ),
      onPressed: () {
        Navigator.of(context).pop();
        MaterialPageRoute route =
            MaterialPageRoute(builder: (c) => LoginScreen());
        Navigator.of(context).push(route);
      },
      child: Text(
        "Login",
        style: TextStyle(
          color: Colors.white,
          fontSize: 21,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

Widget SignUpButton(BuildContext context) {
  return SizedBox(
    width: 150,
    height: 45,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SiginScreen()),
        );
      },
      child: Text(
        "Sign Up",
        style: TextStyle(
          color: Colors.white,
          fontSize: 21,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

Widget LogSigUpButton(BuildContext context) {
  return Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      LogInButton(context),
      SizedBox(
        width: 15,
      ),
      SignUpButton(context),
    ],
  );
}

class _ImagePageState extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 15,
          ),
          ImageLogo(),
          const Text(
            "Novice Soutsanouk",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 15,
          ),
          UserText(),
          const SizedBox(
            height: 15,
          ),
          PasswordText(),
          const SizedBox(
            height: 15,
          ),
          LogSigUpButton(context),
        ],
      ),
    );
  }
}

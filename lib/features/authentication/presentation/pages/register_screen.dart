import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:i_baza/assets/colors.dart';
import 'package:i_baza/assets/icons.dart';

import 'login_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 52),
          SvgPicture.asset(AppIcons.i_baza),
          SizedBox(height: 48),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              'Ro\'yxatdan o\'tish',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 28),
            ),
          ),
          Text(
            'Ma\'lumotlarni kiriting',
            style: TextStyle(color: Colors.grey, fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'F.ISH.',
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Telefon raqami',
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: double.maxFinite,
            child: MaterialButton(
              color: buttonColor,
              onPressed: () {},
              child: Text('Davom etish'),
            ),
          ),
          SizedBox(height: 220),
          Text('Ro\'yxatdan o\'tganmisiz?'),
          SizedBox(height: 10),
          Container(
            width: double.maxFinite,
            child: MaterialButton(
              color: buttonColor,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => LoginScreen(),
                  ),
                );
              },
              child: Text('Kirish'),
            ),
          ),
        ],
      ),
    );
  }
}

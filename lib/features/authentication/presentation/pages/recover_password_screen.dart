import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:i_baza/assets/colors.dart';
import 'package:i_baza/assets/icons.dart';

class RecoverScreen extends StatelessWidget {
  const RecoverScreen({Key? key});

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
              'Parolni qayta tiklash',
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
        ],
      ),
    );
  }
}

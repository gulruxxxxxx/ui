import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:i_baza/assets/colors.dart';
import 'package:i_baza/assets/icons.dart';
import 'package:i_baza/features/authentication/presentation/pages/recover_password_screen.dart';
import 'package:i_baza/features/authentication/presentation/pages/register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key});

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
              'Xush kelibsiz!',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 28),
            ),
          ),
          Text(
            'Ma\'lumotlaringizni kiriting',
            style:
            TextStyle(color: Colors.grey, fontSize: 18, fontWeight: FontWeight.w500),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Stack(
                alignment: Alignment.topRight,
              children: [ TextFormField(
                decoration: InputDecoration(
                  labelText: 'Parolni kiriting',
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),

                  ),
                ),
              ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RecoverScreen()
                        )
                    );

                  },
                  child: const Text(
                    'Unutdingizmi?',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey
                    ),
                  ),
                )
]
            ),
          ),

          SizedBox(height: 20),
          Container(
            width: double.maxFinite,
            child: MaterialButton(
                color: buttonColor,
              onPressed: () {
              },
              child:
              Text('Kirish'),

            ),
          ),
          SizedBox(height: 220),
          Text('Ilovada yangimisiz?'),
          SizedBox(height: 10),
          Container(
            width: double.maxFinite,
            child: MaterialButton(
              color: buttonColor,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => RegisterScreen(),
                  ),
                );
              },
              child: Text('Ro\'yxatdan o\'tish'),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 500,
        height: 600,
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 83,
                  left: 16,
                  right: 16,
                ),
                child: Image.asset("assets/icons/on_boarding.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}





import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return   Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      height: screenHeight / 1.2,
      constraints: BoxConstraints(minHeight: 350.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hi, \nI am Robot\nA backend developer",
                style: TextStyle(
                  height: 1.5,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                  ),
                  child: Text(
                    "Get in touch",
                    style: TextStyle(color: Colors.white70),
                  ),
                ),
              ),
            ],
          ),
          Image.asset("assets/my_avatar.png", width: screenWidth / 4),
        ],
      ),
    );
  }
}

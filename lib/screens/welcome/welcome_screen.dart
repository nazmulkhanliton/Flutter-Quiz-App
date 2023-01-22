import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../../constants.dart';

class WelcomeScreen extends StatelessWidget {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      body: Stack(
        children: [
          WebsafeSvg.asset(
            'assets/icons/bg.svg',
            width: width,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(flex: 2), // It take 2/6
                  Text(
                    "Let's Play Quiz",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Enter Your Information Bellow',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Spacer(), // It take 2/6
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Full Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  Spacer(), // It take 1/6
                  InkWell(
                    onTap: (){},
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(kDefaultPadding * .75),
                      decoration: BoxDecoration(
                          gradient: kPrimaryGradient,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        "Lets Start Quiz",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  Spacer(flex: 2,), // It take 2/6
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

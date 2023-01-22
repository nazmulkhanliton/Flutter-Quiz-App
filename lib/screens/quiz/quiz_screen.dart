import 'package:flutter/material.dart';
import 'components/body.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,    // elevation ensure appbar color opacity
        actions: [
          TextButton(
              onPressed: (){},
              child: Text(
                'Skip',
              ),
          ),
        ],
      ),
      body: Body()
    );
  }
}

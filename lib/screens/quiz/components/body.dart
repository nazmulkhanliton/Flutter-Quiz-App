import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Stack(
      children: [
        WebsafeSvg.asset(
          'assets/icons/bg.svg',
          width: width,
          fit: BoxFit.fill,
        ),
      ],
    );
  }
}
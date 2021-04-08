import 'package:flutter/material.dart';

class SightListScreen extends StatefulWidget {
  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  // textStyle customizing function
  TextStyle customTextStyle({
    Color color,
    bool shadow,
  }) {
    return TextStyle(
      color: color,
      fontWeight: FontWeight.w700,
      fontSize: 32.0,
      height: 1.125,
      shadows: [
        if (shadow)
          Shadow(
            color: Colors.black.withOpacity(.25),
            offset: Offset(0, 4),
            blurRadius: 4,
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 100,
        title: RichText(
          maxLines: 2,
          textAlign: TextAlign.left,
          text: TextSpan(
            children: [
              TextSpan(
                text: 'С',
                style: customTextStyle(color: Color(0xFF4CAF50), shadow: false),
                children: [
                  TextSpan(
                    text: 'писок \n',
                    style: customTextStyle(
                        color: Color(0xFF3B3E5B), shadow: false),
                  ),
                ],
              ),
              TextSpan(
                text: 'и',
                style: customTextStyle(color: Color(0xFFFCDD3D), shadow: false),
                children: [
                  TextSpan(
                    text: 'нтересных ',
                    style: customTextStyle(
                        color: Color(0xFF3B3E5B), shadow: false),
                  ),
                  TextSpan(
                    text: 'м',
                    style: customTextStyle(
                        color: Color(0xFF252849), shadow: false),
                  ),
                  TextSpan(
                    text: 'ест',
                    style: customTextStyle(
                        color: Color(0xFF3B3E5B), shadow: false),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Text(
          'Inside body',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

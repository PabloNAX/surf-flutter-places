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
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   toolbarHeight: 100,
      //   title: RichText(
      //     maxLines: 2,
      //     textAlign: TextAlign.left,
      //     text: TextSpan(
      //         text: 'С',
      //         style: customTextStyle(color: Color(0xFF252849), shadow: true),
      //         children: [
      //           TextSpan(
      //               text: 'писок ',
      //               style:
      //                   customTextStyle(color: Color(0xFF3B3E5B), shadow: true),
      //               children: [
      //                 TextSpan(
      //                   text: '\n',
      //                 ),
      //                 TextSpan(
      //                   text: 'И',
      //                   style: customTextStyle(
      //                       color: Color(0xFF252849), shadow: true),
      //                 ),
      //                 TextSpan(
      //                   text: 'нтересных ',
      //                   style: customTextStyle(
      //                       color: Color(0xFF3B3E5B), shadow: true),
      //                 ),
      //                 TextSpan(
      //                   text: 'М',
      //                   style: customTextStyle(
      //                       color: Color(0xFF252849), shadow: true),
      //                 ),
      //                 TextSpan(
      //                   text: 'ест',
      //                   style: customTextStyle(
      //                       color: Color(0xFF3B3E5B), shadow: true),
      //                 ),
      //               ]),
      //         ]),
      //   ),
      // ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 100,
        title: Text(
          'Список \nинтересных мест',
          style: TextStyle(
            color: Color(0xFF252849),
            fontWeight: FontWeight.w700,
            fontSize: 32.0,
            height: 1.125,
            shadows: [
              Shadow(
                color: Colors.black.withOpacity(.25),
                offset: Offset(0, 4),
                blurRadius: 4,
              ),
            ],
          ),
          maxLines: 2,
          textAlign: TextAlign.left,
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

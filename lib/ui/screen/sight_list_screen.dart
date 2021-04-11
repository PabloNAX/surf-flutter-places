import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/screen/sight_card.dart';

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SightCard(
                sight: Sight(
                  name: 'Воронежский областной краеведческий музей',
                  details: 'краткое описание',
                  coordinates: Coordinates(lat: 2.44, lon: 2.555),
                  type: 'музей',
                  url: 'https://tripadviser.com/house/',
                ),
              ),
              SizedBox(
                height: 16,
              ),
              SightCard(
                sight: Sight(
                  name: 'Воронежский областной краеведческий музей',
                  details: 'краткое описание',
                  coordinates: Coordinates(lat: 2.44, lon: 2.555),
                  type: 'музей',
                  url: 'https://tripadviser.com/house/',
                ),
              ),
              SizedBox(
                height: 16,
              ),
              SightCard(
                sight: Sight(
                  name: 'Воронежский областной краеведческий музей',
                  details: 'краткое описание',
                  coordinates: Coordinates(lat: 2.44, lon: 2.555),
                  type: 'музей',
                  url: 'https://tripadviser.com/house/',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

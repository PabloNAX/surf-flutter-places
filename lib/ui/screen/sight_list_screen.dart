import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/screen/sight_card.dart';

class SightListScreen extends StatefulWidget {
  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: Container(
          padding: EdgeInsets.only(left: 16, right: 16, top: 32, bottom: 16),
          // backgroundColor: Colors.transparent,
          // elevation: 0,
          // toolbarHeight: 100,
          child: Text(
            'Список\nинтересных мест',
            maxLines: 2,
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.headline5,
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
                  name: 'Воронежский областной краеведческий',
                  details: 'краткое описание',
                  coordinates: Coordinates(lat: 2.44, lon: 2.555),
                  type: 'музей',
                  url: 'https://picsum.photos/600/210',
                ),
              ),
              SizedBox(
                height: 16,
              ),
              SightCard(
                sight: Sight(
                  name: 'Воронежский областной краеведческий',
                  details: 'краткое описание',
                  coordinates: Coordinates(lat: 2.44, lon: 2.555),
                  type: 'музей',
                  url: 'https://picsum.photos/400/200',
                ),
              ),
              SizedBox(
                height: 16,
              ),
              SightCard(
                sight: Sight(
                  name: 'Воронежский областной краеведческий',
                  details: 'краткое описание',
                  coordinates: Coordinates(lat: 2.44, lon: 2.555),
                  type: 'музей',
                  url: 'https://picsum.photos/400/230',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

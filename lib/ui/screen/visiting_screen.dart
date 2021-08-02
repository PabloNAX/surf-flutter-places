import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/screen/sight_card.dart';

class VisitingScreen extends StatefulWidget {
  @override
  _VisitingScreenState createState() => _VisitingScreenState();
}

class _VisitingScreenState extends State<VisitingScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: Center(
            child:
                Text('Избранное', style: Theme.of(context).textTheme.headline6),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(56.0),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Theme.of(context).backgroundColor,
                ),
                child: TabBar(
                  tabs: [
                    Tab(
                      child: Text(
                        'Хочу посетить',
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Посетил',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            top: 24.0,
            left: 16,
            right: 16,
          ),
          child: TabBarView(children: [
            Column(
              children: [
                SightCard(
                  sight: Sight(
                    name: 'Воронежский областной краеведческий',
                    details: 'запланировано 21:00',
                    coordinates: Coordinates(lat: 2.44, lon: 2.555),
                    type: 'музей',
                    url: 'https://picsum.photos/600/210',
                  ),
                  isCalendarIcon: true,
                ),
              ],
            ),
            Column(
              children: [
                SightCard(
                  sight: Sight(
                    name: 'Воронежский областной краеведческий',
                    details: 'посетили',
                    coordinates: Coordinates(lat: 2.44, lon: 2.555),
                    type: 'музей',
                    url: 'https://picsum.photos/600/210',
                  ),
                  isVisited: true,
                  isCalendarIcon: true,
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

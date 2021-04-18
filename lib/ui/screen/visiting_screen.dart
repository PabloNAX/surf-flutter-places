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
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Center(
              child: Text(
            'Избранное',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 24.0,
              color: Color(0xFF252849),
            ),
          )),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(56.0),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Color(0xfff5f5f5),
                ),
                child: TabBar(
                  unselectedLabelColor: Color(0xFF7C7E92),
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Color(0xff3B3E5B),
                  ),
                  tabs: [
                    Tab(
                      child: Text(
                        'Хочу посетить',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Посетил',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14.0,
                        ),
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
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/ui/screen/res/themes.dart';
import 'package:places/ui/screen/sight_list_screen.dart';
import 'package:places/ui/screen/visiting_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my title',
      theme: lightTheme,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    SightListScreen(),
    VisitingScreen(),
    // VisitingScreen(),
    // VisitingScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
                color: Color(0xff7C7E92).withOpacity(0.56), width: 0.8),
          ),
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'res/images/svg/List.svg',
              ),
              label: 'List',
            ),
            // BottomNavigationBarItem(
            //   icon: SvgPicture.asset(
            //     'res/images/svg/Map.svg',
            //   ),
            //   label: 'Map',
            // ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'res/images/svg/Heart Full.svg',
              ),
              label: 'Heart',
            ),
            // BottomNavigationBarItem(
            //   icon: SvgPicture.asset(
            //     'res/images/svg/Settings.svg',
            //   ),
            //   label: 'Settings',
            // ),
          ],
          currentIndex: _selectedIndex,
          // selectedItemColor: Color(0xff252849),
          onTap: _onItemTapped,
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class MyFirstWidget extends StatelessWidget {
  int i = 0;
  counter() {
    print(i);
    i++;
  }

  @override
  Widget build(BuildContext context) {
    runtimeTypeMethod() {
      print(context.runtimeType.toString());
      return context.runtimeType;
    }

    runtimeTypeMethod();

    counter();
    return Container(
      child: Center(
        child: Text('Hello!'),
      ),
    );
  }
}

class MyFirstWidgetStatefull extends StatefulWidget {
  @override
  _MyFirstWidgetStatefullState createState() => _MyFirstWidgetStatefullState();
}

class _MyFirstWidgetStatefullState extends State<MyFirstWidgetStatefull> {
  int i = 0;
  counter() {
    print(i);
    i++;
  }

  @override
  Widget build(BuildContext context) {
    runtimeTypeMethod() {
      print(context.runtimeType.toString());
      return context.runtimeType;
    }

    runtimeTypeMethod();

    counter();
    return Container(
      child: Center(
        child: Text('Hello!'),
      ),
    );
  }
}

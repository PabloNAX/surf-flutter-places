import 'package:flutter/material.dart';
import 'package:places/ui/screen/sight_detailes.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my title',
      home: SightDetails(),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            MyFirstWidget(),
            MyFirstWidgetStatefull(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
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

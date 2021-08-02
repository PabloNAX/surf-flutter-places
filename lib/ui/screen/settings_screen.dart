import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:places/main.dart';

class ThemeSwitcher extends ChangeNotifier {
  bool _isDarkTheme = false;
  bool get isDarkTheme => _isDarkTheme;

  void switchTheme(bool val) {
    _isDarkTheme = val;
    notifyListeners();
  }
}

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Center(
          child: Text('Избранное',
              style:
                  Theme.of(context).textTheme.headline6.copyWith(fontSize: 18)),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Темая тема',
                style: Theme.of(context)
                    .primaryTextTheme
                    .headline5
                    .copyWith(fontSize: 16, fontWeight: FontWeight.w400)),
            trailing: CupertinoSwitch(
              value: model.isDarkTheme,
              onChanged: (val) {
                isDarkTheme = val;
                model.switchTheme(val);
                print(model.isDarkTheme.toString());

                setState(() {});
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(),
          ),
          ListTile(
              title: Text('Смотреть туториал',
                  style: Theme.of(context)
                      .primaryTextTheme
                      .headline5
                      .copyWith(fontSize: 16, fontWeight: FontWeight.w400)),
              trailing: Icon(
                Icons.info_outline,
                color: Theme.of(context).accentColor,
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(),
          ),
        ],
      ),
    );
  }
}

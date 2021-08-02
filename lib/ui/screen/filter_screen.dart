import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FiltersScreen extends StatefulWidget {
  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _isHotel = false;
  bool _isRestaurant = false;
  bool _isPlace = false;
  bool _isPark = false;
  bool _isMuseum = false;
  bool _isCafe = false;
  RangeValues _currentRangeValues = const RangeValues(100, 10000);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          color: Theme.of(context).primaryColor,
          icon: Icon(Icons.arrow_back_ios),
        ),
        actions: [
          FlatButton(
              onPressed: () {
                setState(() {
                  _isHotel = false;
                  _isRestaurant = false;
                  _isPlace = false;
                  _isPark = false;
                  _isMuseum = false;
                  _isCafe = false;
                  _currentRangeValues = RangeValues(100, 10000);
                });
              },
              child: Text(
                'Очистить',
                style: Theme.of(context).accentTextTheme.subtitle1,
              ))
        ],
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,

        // title: Text('Избранное', style: Theme.of(context).textTheme.headline6),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'категории'.toUpperCase(),
                style: Theme.of(context).textTheme.bodyText2.copyWith(
                      color: Color(0xff3B3E5B).withOpacity(0.56),
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 24.0, left: 16, right: 16, bottom: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FilterChip(
                    onTap: () {
                      setState(() {
                        _isHotel = !_isHotel;
                      });
                    },
                    value: _isHotel,
                    title: 'Отель',
                    svgPath: 'res/images/svg/hotel.svg',
                  ),
                  FilterChip(
                    title: 'Ресторан',
                    svgPath: 'res/images/svg/Restourant.svg',
                    onTap: () {
                      setState(() {
                        _isRestaurant = !_isRestaurant;
                      });
                    },
                    value: _isRestaurant,
                  ),
                  FilterChip(
                    title: 'Особое место',
                    svgPath: 'res/images/svg/particular place.svg',
                    onTap: () {
                      setState(() {
                        _isPlace = !_isPlace;
                      });
                    },
                    value: _isPlace,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 0.0, left: 16, right: 16, bottom: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FilterChip(
                    onTap: () {
                      setState(() {
                        _isPark = !_isPark;
                      });
                    },
                    value: _isPark,
                    title: 'Парк',
                    svgPath: 'res/images/svg/park.svg',
                  ),
                  FilterChip(
                    title: 'Музей',
                    svgPath: 'res/images/svg/museum.svg',
                    onTap: () {
                      setState(() {
                        _isMuseum = !_isMuseum;
                      });
                    },
                    value: _isMuseum,
                  ),
                  FilterChip(
                    title: 'Кафе',
                    svgPath: 'res/images/svg/cafe.svg',
                    onTap: () {
                      setState(() {
                        _isCafe = !_isCafe;
                      });
                    },
                    value: _isCafe,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Расстояние',
                    style: Theme.of(context)
                        .primaryTextTheme
                        .subtitle2
                        .copyWith(fontWeight: FontWeight.w400, fontSize: 16),
                  ),
                  Text(
                    'от 10 до 30 км',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontSize: 16),
                  ),
                ],
              ),
            ),
            SliderTheme(
              data: SliderThemeData(
                thumbColor: Colors.white,
                activeTrackColor: Theme.of(context).accentColor,
                inactiveTrackColor: Color(0xff7C7E92).withOpacity(0.56),
              ),
              child: RangeSlider(
                values: _currentRangeValues,
                min: 100,
                max: 10000,
                divisions: 5,
                labels: RangeLabels(
                  _currentRangeValues.start.round().toString(),
                  _currentRangeValues.end.round().toString(),
                ),
                onChanged: (RangeValues values) {
                  setState(() {
                    _currentRangeValues = values;
                  });
                },
              ),
            ),
            Spacer(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
              child: ElevatedButton(
                onPressed: () {
                  print('_isHotel' + _isHotel.toString());
                  print('_isRestaurant' + _isRestaurant.toString());
                  print('_isPlace' + _isPlace.toString());
                  print('_isPark' + _isPark.toString());
                  print('_isMuseum' + _isMuseum.toString());
                  print('_isCafe' + _isCafe.toString());

                  print(
                    _currentRangeValues.start.round().toString() +
                        ' ' +
                        _currentRangeValues.end.round().toString(),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('показать (190)'.toUpperCase()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SliderFilterWidget extends StatefulWidget {
  const SliderFilterWidget({Key key}) : super(key: key);

  @override
  State<SliderFilterWidget> createState() => _SliderFilterWidgetState();
}

class _SliderFilterWidgetState extends State<SliderFilterWidget> {
  RangeValues _currentRangeValues = const RangeValues(100, 10000);

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderThemeData(
        thumbColor: Colors.white,
        activeTrackColor: Theme.of(context).accentColor,
        inactiveTrackColor: Color(0xff7C7E92).withOpacity(0.56),
      ),
      child: RangeSlider(
        values: _currentRangeValues,
        min: 100,
        max: 10000,
        divisions: 5,
        labels: RangeLabels(
          _currentRangeValues.start.round().toString(),
          _currentRangeValues.end.round().toString(),
        ),
        onChanged: (RangeValues values) {
          setState(() {
            _currentRangeValues = values;
          });
        },
      ),
    );
  }
}

class FilterChip extends StatelessWidget {
  final bool value;
  final Function onTap;
  final String title;
  final String svgPath;

  const FilterChip({Key key, this.value, this.onTap, this.title, this.svgPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(64)),
                  color: Theme.of(context).accentColor.withOpacity(0.16),
                ),
                width: 64,
                height: 64,
                child: Center(
                  child: SvgPicture.asset(
                    svgPath,
                  ),
                ),
              ),
              if (value)
                Positioned(
                  right: -4,
                  bottom: -4,
                  child: SvgPicture.asset(
                    'res/images/svg/tick_choice.svg',
                  ),
                ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            width: 96,
            child: Center(
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

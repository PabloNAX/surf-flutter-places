import 'package:flutter/material.dart';

class SightDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 360,
                width: double.infinity,
                child: Image.network(
                  'https://picsum.photos/400/400',
                  fit: BoxFit.cover,
                  loadingBuilder: (BuildContext context, Widget child,
                      ImageChunkEvent loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    }
                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes
                            : null,
                      ),
                    );
                  },
                ),
              ),
              Positioned(
                top: 36,
                left: 16,
                child: Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Пряности и радости',
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                ),
                SizedBox(
                  height: 2,
                ),
                Row(
                  children: [
                    Text('ресторан',
                        style: Theme.of(context).primaryTextTheme.subtitle2),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      'закрыто до 09:00',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  'Пряный вкус радостной жизни вместе с шеф-поваром Изо Дзандзава, благодаря которой у гостей ресторана есть возможность выбирать из двух направлений: европейского и восточного',
                  style: Theme.of(context).primaryTextTheme.bodyText1,
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  color: Theme.of(context).accentColor,
                  height: 48,
                  width: double.infinity,
                ),
                SizedBox(
                  height: 24,
                ),
                Divider(),
                SizedBox(
                  height: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Container(
                        // width: 300,
                        color: Colors.grey,
                        height: 40,
                      ),
                    ),
                    Flexible(
                      child: Container(
                        color: Colors.black45,
                        height: 40,
                        // width: double.infinity,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

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
                color: Colors.lightBlueAccent,
                height: 360,
              ),
              Positioned(
                top: 36,
                left: 16,
                child: Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
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
                  style: TextStyle(
                    color: Color(0xFF3B3E5B),
                    fontSize: 24,
                    height: 1.25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Row(
                  children: [
                    Text(
                      'ресторан',
                      style: TextStyle(
                        color: Color(0xFF3B3E5B),
                        fontSize: 14,
                        height: 1.25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      'закрыто до 09:00',
                      style: TextStyle(
                        color: Color(0xFF7C7E92),
                        fontSize: 14,
                        height: 1.25,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  'Пряный вкус радостной жизни вместе с шеф-поваром Изо Дзандзава, благодаря которой у гостей ресторана есть возможность выбирать из двух направлений: европейского и восточного',
                  style: TextStyle(
                    color: Color(0xFF3B3E5B),
                    fontSize: 14,
                    height: 1.25,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  color: Colors.green,
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

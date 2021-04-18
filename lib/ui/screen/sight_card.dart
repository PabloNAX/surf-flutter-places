import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';

class SightCard extends StatelessWidget {
  final Sight sight;
  final bool isVisited;

  const SightCard({Key key, this.sight, this.isVisited = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AspectRatio(
        aspectRatio: 3 / 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.0),
                    topRight: Radius.circular(12.0),
                  ),
                  child: Container(
                    height: 96,
                    width: double.infinity,
                    child: Image.network(
                      sight.url,
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
                ),
                Container(
                  height: 96,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(12.0),
                      topRight: const Radius.circular(12.0),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF282B4C).withOpacity(0.5),
                        Color(0xFF3B3E5B).withOpacity(0.08),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    sight.type,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        height: 1.25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                  right: 16,
                  top: 16,
                  child: Container(
                    height: 24,
                    width: 24,
                    color: Colors.red,
                  ),
                )
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFFF5F5F5),
                borderRadius: BorderRadius.only(
                  bottomLeft: const Radius.circular(12.0),
                  bottomRight: const Radius.circular(12.0),
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 16,
                  ),
                  Center(),
                  ConstrainedBox(
                    child: Text(
                      sight.name,
                      style: TextStyle(
                        color: Color(0xFF3B3E5B),
                        fontSize: 16,
                        height: 1.25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    constraints: BoxConstraints(
                      maxWidth: 150,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    sight.details,
                    style: TextStyle(
                      color: isVisited ? Color(0xFF7C7E92) : Color(0xFF4CAF50),
                      fontSize: 14,
                      height: 1.28,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

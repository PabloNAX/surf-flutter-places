import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/domain/sight.dart';

class SightCard extends StatelessWidget {
  final Sight sight;
  final bool isVisited;
  final bool isCalendarIcon;

  const SightCard(
      {Key key,
      this.sight,
      this.isVisited = false,
      this.isCalendarIcon = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
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
                        Theme.of(context).primaryColor.withOpacity(0.5),
                        Theme.of(context).primaryColorLight.withOpacity(0.08),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    sight.type,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ),
                Positioned(
                  right: 16,
                  top: 16,
                  child: InkWell(
                    onTap: () {
                      print('heart tapped');
                    },
                    child: Container(
                      height: 24,
                      width: 24,
                      child: SvgPicture.asset(
                        'res/images/svg/Heart.svg',
                        matchTextDirection: true,
                      ),
                    ),
                  ),
                ),
                if (isCalendarIcon)
                  Positioned(
                    right: 56,
                    top: 16,
                    child: InkWell(
                      onTap: () {
                        print('calendar tapped');
                      },
                      child: Container(
                        height: 24,
                        width: 24,
                        child: SvgPicture.asset(
                          'res/images/svg/Calendar-white.svg',
                          color: Colors.white,
                          matchTextDirection: true,
                        ),
                      ),
                    ),
                  )
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
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
                      style: Theme.of(context).textTheme.subtitle1,
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
                    style: isVisited
                        ? Theme.of(context).textTheme.bodyText1
                        : Theme.of(context).accentTextTheme.bodyText1,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
          ],
        ),
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {},
            ),
          ),
        ),
      ],
    );
  }
}

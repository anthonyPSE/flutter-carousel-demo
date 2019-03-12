import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  final int numObj;

  Carousel({this.numObj});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: _getChildren(),
    );
  }

  List<Widget> _getChildren() {
    List<Widget> returnMe = new List<Widget>();

    for (int i = 0; i < numObj; i++) {
      returnMe.add(CarouselItem(
        img: AssetImage("assets/movie_poster.png"),
        title: "This is a super long Temp Title",
        rating: "MPAA",
      ));

      returnMe.add(SizedBox(height: 10.0, width: 10.0));
    }
    return returnMe;
  }
}

class CarouselItem extends StatelessWidget {
  //Members
  final AssetImage img;
  final String title;
  final String rating;

  //Constructor(s)
  CarouselItem({this.img, this.title, this.rating});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        child: Column(
          children: <Widget>[
            Container(
              height: 200.0,
              width: 100.0,
              decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: img,
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              title,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(rating),
            SizedBox(
              height: 8.0,
            ),
          ],
        ));
  }
}

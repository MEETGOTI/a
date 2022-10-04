import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class banner extends StatefulWidget {
  const banner({Key? key}) : super(key: key);

  @override
  State<banner> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<banner> {
  @override
  Widget build(BuildContext context) {
    List imgList = [
      'assets/images/Goals-2.png',
      'assets/images/Card-Goals-2.png',
      'assets/images/Goals-3.png',
    ];
    // ignore: unused_local_variable
    late CarouselSlider carouselSlider;
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            carouselSlider = CarouselSlider(
              items: imgList.map((imgUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 0.0),
                      decoration: BoxDecoration(
                        //color: Colors.green,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30)),
                        image: DecorationImage(
                            image: AssetImage(
                              imgUrl,
                            ),
                            fit: BoxFit.fill),
                      ),
                    );
                  },
                );
              }).toList(),
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height / 1.9,
                initialPage: 0,
                enlargeCenterPage: true,
                autoPlay: true,
                viewportFraction: 0.7,
                reverse: false,
                enableInfiniteScroll: true,
                autoPlayInterval: const Duration(seconds: 2),
                autoPlayAnimationDuration: const Duration(milliseconds: 1000),
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

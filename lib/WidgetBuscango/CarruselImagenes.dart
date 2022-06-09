import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class CarruselImagenes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.4,
      height: size.height * 0.1,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Image.network(
              'assets/ejemplo.jpg',
              fit: BoxFit.scaleDown,
            ),
          );
        },
        itemCount: 10,
        viewportFraction: 0.2,
        control: SwiperControl(),
      ),
    );
  }
}

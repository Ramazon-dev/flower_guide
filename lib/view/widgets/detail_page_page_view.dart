import 'package:flutter/material.dart';
import 'package:flower_guide/core/constants/imports.dart';

class DetailPageCarousel extends StatelessWidget {
  DetailPageCarousel({Key? key}) : super(key: key);
  late BuildContext _context;

  @override
  Widget build(BuildContext context) {
    _context = context;
    return _carouselSlider();
  }

  CarouselSlider _carouselSlider() => CarouselSlider(
      items: List.generate(
        1,
        (index) => _setImage('https://source.unsplash.com/random/$index'),
      ),
      options: CarouselOptions(
        enableInfiniteScroll: true, // TODO Agar rasm bit dona bo'lsa false
        height: getUniqueH(378.0),
        enlargeCenterPage: true,
      ));

  ClipRRect _setImage(String imageUrl) => ClipRRect(
        borderRadius: BorderRadius.circular(getUniqueW(8.0)),
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
          width: MediaQuery.of(_context).size.width,
        ),
      );
}

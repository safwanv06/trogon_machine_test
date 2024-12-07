import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:trogon_machine_test/screens/flash_card_screen/screen/widget/slider_view/flip_card.dart';
import 'package:trogon_machine_test/utils/shared_data/static_data.dart';

class CarouselSliderView extends StatelessWidget {
  const CarouselSliderView({super.key,required this.controller});

  final CarouselSliderController controller;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: words.map(
          (e) {
            return  FlipCardView(word: e);
          },
        ).toList(),
        carouselController: controller,
        options: CarouselOptions(
          aspectRatio: 1,
          enlargeCenterPage: true,
          scrollPhysics: NeverScrollableScrollPhysics(),
          enableInfiniteScroll: false,
          autoPlay: false,
        ));
  }
}

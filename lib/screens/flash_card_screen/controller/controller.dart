import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:trogon_machine_test/utils/shared_data/static_data.dart';

class FlashCardController extends ChangeNotifier {
  CarouselSliderController controller = CarouselSliderController();
  int index = 1;

  onNextTap() {
    print(index+1);
    print(words.length);
    if (index+1 == words.length) {
    } else {
      index++;
      controller.animateToPage(index);
      notifyListeners();
    }
  }

  onPreviousTap() {
    if (index == 1) {
    } else {
      index--;
      controller.animateToPage(index);
      notifyListeners();
    }
  }
}

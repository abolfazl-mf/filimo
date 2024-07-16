import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  final RxInt _currentSlide = 0.obs;
  final Rx<CarouselController> _carouselController = CarouselController().obs;

  int get currentSlide => _currentSlide.value;

  CarouselController get carouselController => _carouselController.value;

  onChangeSlide(int index, CarouselPageChangedReason reason) {
    _currentSlide.value = index;
  }

  onDotClick(int index) {
    _currentSlide.value = index;
    carouselController.animateToPage(index);
  }
}

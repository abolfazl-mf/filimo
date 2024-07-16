import 'package:carousel_slider/carousel_slider.dart';
import 'package:filimo/controlers/home-screen-controller.dart';
import 'package:filimo/models/video-detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class VideoSlider extends GetView<HomeScreenController> {
  const VideoSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
          () =>
          Column(
            children: [
              CarouselSlider(
                  items: imageList,
                  carouselController: controller.carouselController,
                  options: CarouselOptions(
                  autoPlay: true,
                  viewportFraction: 1,
                  enableInfiniteScroll: true,
                  aspectRatio: 0.9,
                  onPageChanged: controller.onChangeSlide,
              ),
              ),
              AnimatedSmoothIndicator(
                activeIndex: controller.currentSlide,
                count: sliderVideosList.length,
                effect: const WormEffect(
                  paintStyle: PaintingStyle.stroke,
                  strokeWidth: 1.5,
                  dotHeight: 12,
                  dotWidth: 12,
                  dotColor: Colors.grey,
                  activeDotColor: Colors.white,
                ),
                onDotClicked: controller.onDotClick,
              ),
            ],
          ),
    );
  }
}



 <Widget> imageList = sliderVideosList.map(
    (item)
    {
      return Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Image.network(
              item.url,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 300,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black12,
                    Colors.transparent,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 20.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    item.description,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(
                          Icons.play_arrow_rounded,
                          color: Colors.black,
                        ),
                        Text(
                          'اطلاعات بیشتر',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      );
    }
);

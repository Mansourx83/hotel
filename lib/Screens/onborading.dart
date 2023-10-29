import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'navbar.dart';

class Onborading extends StatefulWidget {
  const Onborading({super.key});

  @override
  State<Onborading> createState() => _OnboradingState();
}

class _OnboradingState extends State<Onborading> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 26, 16, 0),
          child: Column(
            children: [
              Image.asset('assets/images/Group 7.png'),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Let’s Find Your Sweet \n      & Dream Place',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff323232)),
              ),
              const SizedBox(
                height: 15,
              ),
              //slider and points
              CarouselSlider(
                options: CarouselOptions(
                  height: 50,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(
                      () {
                        activeIndex = index;
                      },
                    );
                  },
                ),
                items: [
                  'Get the opportunity to stay that you dream of at an affordable price',
                  'Booking your stay well in advance can often result in lower prices',
                  'When booking ask for additional amenities, such as free breakfast or airport transfers',
                ].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 35),
                        child: Text(
                          '$i',
                          style: const TextStyle(
                            fontSize: 14,
                            color: Color(0xff787878),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              const SizedBox(
                height: 20,
              ),
              //points slider
              AnimatedSmoothIndicator(
                activeIndex: activeIndex,
                count: 3,
                effect: const WormEffect(
                  activeDotColor: Color(0xff2C67FF),
                  dotColor: Color(0xffEBF0FF),
                  dotHeight: 11,
                  dotWidth: 11,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
                      builder: (context) {
                        return BottomNavyBarPage();
                      },
                    ), (route) => false);
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width, 57),
                    backgroundColor: Color(0xff2C67FF),
                  ),
                  child: Text(
                    'Let’s Go',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

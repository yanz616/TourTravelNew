import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tourtravelnew/controller/bannerController.dart';
import 'package:tourtravelnew/controller/packageController.dart';
import 'package:tourtravelnew/shared/theme/theme.dart';
import 'package:tourtravelnew/views/widgets/form.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final BannerController controller = Get.put(BannerController());
  final PackageController _controller = Get.put(PackageController());

  int currentIndex = 0;
  final CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 260),
              child: Container(
                height: 1000,
                color: whiteColor1,
              ),
            ),
            Column(
              children: [
                Gap(60),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 246,
                        child: Text(
                          '#Nikmati Liburan Impianmu Sekarang Juga!',
                          style: whiteTextStyle.copyWith(
                            fontWeight: semiBold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const Gap(14),
                      Row(
                        children: [
                          Expanded(
                              child: FormSearch(
                            hintText: 'Mau Kemana?',
                          )),
                          Gap(4),
                          CircleAvatar(
                            maxRadius: 18,
                            child: Icon(
                              Icons.email_outlined,
                              color: primaryColor,
                            ),
                            backgroundColor: whiteColor1,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Gap(14),
                Obx(() {
                  final images = controller.slider;
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 180,
                        child: CarouselSlider(
                          items: images.map((image) {
                            return Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                image: DecorationImage(
                                  image: AssetImage(image.image),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          }).toList(),
                          carouselController: carouselController,
                          options: CarouselOptions(
                            height: 200,
                            autoPlay: true,
                            enlargeCenterPage: true,
                            aspectRatio: 16 / 9,
                            onPageChanged: (index, reason) {
                              setState(() {
                                currentIndex = index;
                              });
                            },
                          ),
                        ),
                      ),
                      const Gap(14),
                      AnimatedSmoothIndicator(
                        activeIndex: currentIndex,
                        count: images.length,
                        effect: const ExpandingDotsEffect(
                          activeDotColor: primaryColor,
                          dotHeight: 8,
                          dotWidth: 10,
                        ),
                      ),
                    ],
                  );
                }),
                Gap(20),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Paket Wisata Lombok Timur',
                            style: greenTextStyle.copyWith(
                              fontWeight: bold,
                              fontSize: 14,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                            color: primaryColor,
                          ),
                        ],
                      ),
                      Gap(14),
                      Obx(() {
                        final wisata = _controller.wisata;
                        return SizedBox(
                          height: 196,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: wisata.length,
                            itemBuilder: (context, index) {
                              return Container(
                                width: 10,
                                height: 100,
                                color: redColor,
                              );
                            },
                          ),
                        );
                      })
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

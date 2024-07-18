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
      backgroundColor: whiteColor1,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 260,
              color: primaryColor,
            ),
            Column(
              children: [
                const Gap(60),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
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
                      const Row(
                        children: [
                          Expanded(
                            child: FormSearch(
                              hintText: 'Mau Kemana?',
                            ),
                          ),
                          Gap(4),
                          CircleAvatar(
                            maxRadius: 18,
                            backgroundColor: whiteColor1,
                            child: Icon(
                              Icons.email_outlined,
                              color: primaryColor,
                            ),
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
                const Gap(20),
                GestureDetector(
                  onTap: () {
                    //navigations
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Paket Wisata Lombok Timur',
                          style: greenTextStyle.copyWith(
                            fontWeight: bold,
                            fontSize: 14,
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 18,
                          color: primaryColor,
                        ),
                      ],
                    ),
                  ),
                ),
                Obx(() {
                  final items = _controller.wisata;
                  return SizedBox(
                    height: 240,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        final item = items[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 6,
                          ),
                          child: Container(
                            width: 212,
                            decoration: BoxDecoration(
                              color: whiteColor1,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  offset: const Offset(
                                      0, 5), // Shadow at the bottom
                                  blurRadius:
                                      6, // Increased blur radius for better shadow effect
                                ),
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  offset:
                                      const Offset(5, 0), // Shadow at the right
                                  blurRadius:
                                      6, // Increased blur radius for better shadow effect
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 128,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                    image: DecorationImage(
                                      image: AssetImage(item.image),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const Gap(14),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            item.name,
                                            style: blackTextStyle.copyWith(
                                              fontWeight: semiBold,
                                              fontSize: 14,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.star,
                                                size: 16,
                                                color: primaryColor,
                                              ),
                                              Text(
                                                item.rating.toString(),
                                                style: greyTextStyle.copyWith(
                                                  fontWeight: regular,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.location_on,
                                            size: 16,
                                            color: primaryColor,
                                          ),
                                          Text(
                                            item.lokasi,
                                            style: greyTextStyle.copyWith(
                                              fontWeight: regular,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  );
                }),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Paket Wisata Lombok Barat',
                        style: greenTextStyle.copyWith(
                          fontWeight: bold,
                          fontSize: 14,
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                        color: primaryColor,
                      ),
                    ],
                  ),
                ),
                Obx(() {
                  final items = _controller.wisata;
                  return SizedBox(
                    height: 240,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        final item = items[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 6,
                          ),
                          child: Container(
                            width: 212,
                            decoration: BoxDecoration(
                              color: whiteColor1,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  offset: const Offset(
                                      0, 5), // Shadow at the bottom
                                  blurRadius:
                                      6, // Increased blur radius for better shadow effect
                                ),
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  offset:
                                      const Offset(5, 0), // Shadow at the right
                                  blurRadius:
                                      6, // Increased blur radius for better shadow effect
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 128,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                    image: DecorationImage(
                                      image: AssetImage(item.image),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const Gap(14),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            item.name,
                                            style: blackTextStyle.copyWith(
                                              fontWeight: semiBold,
                                              fontSize: 14,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.star,
                                                size: 16,
                                                color: primaryColor,
                                              ),
                                              Text(
                                                item.rating.toString(),
                                                style: greyTextStyle.copyWith(
                                                  fontWeight: regular,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.location_on,
                                            size: 16,
                                            color: primaryColor,
                                          ),
                                          Text(
                                            item.lokasi,
                                            style: greyTextStyle.copyWith(
                                              fontWeight: regular,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  );
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

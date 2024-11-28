import 'package:flutter/material.dart';
import 'package:stylish/images.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const slidersList = [imgSlider1, imgSlider2, imgSlider3, imgSlider4];
    const secondSlidersList = [imgSs1, imgSs2, imgSs3, imgSs4];

    const featuredImages = [imgS1, imgS10, imgS3, imgP7, imgPi4, imgS6];
    const featuredTitles = [
      "Women Dress",
      "Girls Dresses",
      "Girls Watches",
      "Boys Glasses",
      "Mobile Phone",
      "TShirts"
    ];

    const productImages = [imgP1, imgP2, imgP4, imgP5, imgP6, imgP7];
    const productName = [
      "Laptop",
      "Cosmetics",
      "Ladies Shoes",
      "Ladies Purse",
      "Sports Shoes",
      "Glasses"
    ];
    const productDesc = "Check out this exclusive product";

    TextEditingController searchController = TextEditingController();

    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(width * 0.03), // Adjust padding dynamically
          height: height,
          width: width,
          color: Color.fromRGBO(239, 239, 239, 1),
          child: Column(
            children: [
              // Search Bar
              Container(
                alignment: Alignment.center,
                height: height * 0.07, // Adjust height dynamically
                color: Color.fromRGBO(239, 239, 239, 1),
                child: TextFormField(
                  controller: searchController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded edges
                        borderSide: BorderSide.none, // No border outline
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.blue,
                            width: 2), // Blue border when focused
                      ),
                      suffixIcon: const Icon(Icons.search)
                          .onTap(() {}), // Add search functionality here
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Search anything ...",
                      hintStyle: const TextStyle(
                          color: Color.fromRGBO(209, 209, 209, 1))),
                ).box.width(width > 600 ? width * 0.5 : width * 0.9).make(),
              ),
              10.heightBox,
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      // All Featured
                      Align(
                        alignment: Alignment.centerLeft,
                        child: "All Featured"
                            .text
                            .color(Color.fromRGBO(62, 68, 71, 1))
                            .size(18)
                            .fontFamily("sans_bold")
                            .make(),
                      ),
                      10.heightBox,
                      // Horizontal List
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        child: Row(
                          children: List.generate(
                            featuredTitles.length,
                            (index) {
                              return Column(
                                children: [
                                  5.heightBox,
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage(featuredImages[index]),
                                    radius: width * 0.07, // Adjust dynamically
                                  ),
                                  5.heightBox,
                                  featuredTitles[index].text.makeCentered(),
                                  5.heightBox,
                                ],
                              )
                                  .box
                                  .margin(EdgeInsets.symmetric(horizontal: 12))
                                  .makeCentered();
                            },
                          ),
                        ).box.color(Colors.white).roundedSM.make(),
                      ),
                      10.heightBox,
                      // Swiper 1
                      VxSwiper.builder(
                          aspectRatio: width > 600 ? 16 / 6 : 16 / 9,
                          autoPlay: true,
                          height: height * 0.2,
                          enlargeCenterPage: true,
                          itemCount: slidersList.length,
                          itemBuilder: (context, index) {
                            return Container(
                              child: Image.asset(
                                slidersList[index],
                                fit: BoxFit.fill,
                              )
                                  .box
                                  .rounded
                                  .clip(Clip.antiAlias)
                                  .margin(
                                      const EdgeInsets.symmetric(horizontal: 8))
                                  .make(),
                            );
                          }),
                      20.heightBox,
                      // Deal of The Day
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              "Deal of the Day"
                                  .text
                                  .white
                                  .fontFamily("sans_bold")
                                  .size(16)
                                  .make(),
                              5.heightBox,
                              Row(
                                children: [
                                  Icon(
                                    Icons.alarm,
                                    color: Colors.white,
                                  ),
                                  " 22h 55m 20s remaining"
                                      .text
                                      .white
                                      .fontFamily("sans_regular")
                                      .make(),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              "View All"
                                  .text
                                  .white
                                  .fontFamily("sans_bold")
                                  .size(16)
                                  .make(),
                              5.widthBox,
                              Icon(
                                Icons.arrow_forward_rounded,
                                color: Colors.white,
                              )
                            ],
                          )
                              .box
                              .border(
                                color: Colors.white,
                                width: 1,
                              )
                              .padding(EdgeInsets.symmetric(horizontal: 10))
                              .roundedSM
                              .makeCentered(),
                        ],
                      )
                          .box
                          .roundedSM
                          .padding(EdgeInsets.all(12))
                          .color(Colors.blue)
                          .makeCentered(),
                      20.heightBox,
                      // Some Products
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        child: Row(
                          children: List.generate(
                            productImages.length,
                            (index) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  10.heightBox,
                                  Image.asset(productImages[index])
                                      .box
                                      .size(width * 0.4, height * 0.2)
                                      .roundedSM
                                      .clip(Clip.hardEdge)
                                      .make(),
                                  5.heightBox,
                                  productName[index]
                                      .text
                                      .fontFamily("sans_bold")
                                      .size(16)
                                      .color(Color.fromRGBO(62, 68, 71, 1))
                                      .make(),
                                  5.heightBox,
                                  productDesc.text
                                      .fontFamily("sans_regular")
                                      .make()
                                      .box
                                      .width(width * 0.4)
                                      .make(),
                                  10.heightBox
                                ],
                              )
                                  .box
                                  .color(Colors.white)
                                  .padding(EdgeInsets.symmetric(horizontal: 12))
                                  .margin(EdgeInsets.symmetric(horizontal: 8))
                                  .roundedSM
                                  .makeCentered();
                            },
                          ),
                        )
                            .box
                            .color(Color.fromRGBO(239, 239, 239, 1))
                            .roundedSM
                            .make(),
                      ),
                      20.heightBox,
                      // Swiper 2
                      VxSwiper.builder(
                          aspectRatio: width > 600 ? 16 / 6 : 16 / 9,
                          autoPlay: true,
                          height: height * 0.2,
                          enlargeCenterPage: true,
                          itemCount: secondSlidersList.length,
                          itemBuilder: (context, index) {
                            return Container(
                              child: Image.asset(
                                secondSlidersList[index],
                                fit: BoxFit.fill,
                              )
                                  .box
                                  .rounded
                                  .clip(Clip.antiAlias)
                                  .margin(
                                      const EdgeInsets.symmetric(horizontal: 8))
                                  .make(),
                            );
                          }),
                    ],
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

// ignore_for_file: use_super_parameters

import 'package:animate_do/animate_do.dart';

import 'package:flutter/material.dart';
import 'package:my_portfolio/globals/app_assets.dart';

import 'package:my_portfolio/globals/app_colors.dart';
import 'package:my_portfolio/globals/constants.dart';
import 'package:my_portfolio/helper%20class/helper_class.dart';

import '../globals/app_text_styles.dart';

class MyServices extends StatefulWidget {
  const MyServices({Key? key}) : super(key: key);

  @override
  State<MyServices> createState() => _MyServicesState();
}

class _MyServicesState extends State<MyServices> {
  bool isApp = false, isGraphic = false, isDataAnalyst = false;

  final onHoverActive = Matrix4.identity()..translate(0, -10, 0);
  final onHoverRemove = Matrix4.identity()..translate(0, 0, 0);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        // mainAxisSize: MainAxisSize.min,
        children: [
          buildMyServicesText(),
          Constants.sizedBox(height: 60.0),
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                isApp = value;
              });
            },
            child: buildAnimatedContainer(
              title: 'App Development',
              asset: AppAssets.code,
              hover: isApp,
            ),
          ),
          // Constants.sizedBox(height: 24.0),
          // InkWell(
          //   onTap: () {},
          //   onHover: (value) {
          //     setState(() {
          //       isGraphic = value;
          //     });
          //   },
          //   child: buildAnimatedContainer(
          //     title: 'Graphic Designing',
          //     asset: AppAssets.brush,
          //     hover: isGraphic,
          //   ),
          // ),
          // Constants.sizedBox(height: 24.0),
          // InkWell(
          //   onTap: () {},
          //   onHover: (value) {
          //     setState(() {
          //       isDataAnalyst = value;
          //     });
          //   },
          //   child: buildAnimatedContainer(
          //     title: 'Digital Marketing',
          //     asset: AppAssets.analyst,
          //     hover: isDataAnalyst,
          //   ),
          // )
        ],
      ),
      tablet: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildMyServicesText(),
          Constants.sizedBox(height: 60.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isApp = value;
                  });
                },
                child: buildAnimatedContainer(
                  title: 'App Development',
                  asset: AppAssets.code,
                  hover: isApp,
                ),
              ),
              // Constants.sizedBox(width: 24.0),
              // InkWell(
              //   onTap: () {},
              //   onHover: (value) {
              //     setState(() {
              //       isGraphic = value;
              //     });
              //   },
              //   child: buildAnimatedContainer(
              //     title: 'Graphic Designing',
              //     asset: AppAssets.brush,
              //     hover: isGraphic,
              //   ),
              // ),
            ],
          ),
          // Constants.sizedBox(height: 26.0),
          // InkWell(
          //   onTap: () {},
          //   onHover: (value) {
          //     setState(() {
          //       isDataAnalyst = value;
          //     });
          //   },
          //   child: buildAnimatedContainer(
          //     title: 'Digital Marketing',
          //     asset: AppAssets.analyst,
          //     hover: isDataAnalyst,
          //     width: 725.0,
          //     hoverWidth: 735.0,
          //   ),
          // )
        ],
      ),
      desktop: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildMyServicesText(),
          Constants.sizedBox(height: 60.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isApp = value;
                  });
                },
                child: buildAnimatedContainer(
                  title: 'App Development',
                  asset: AppAssets.code,
                  hover: isApp,
                ),
              ),
              // Constants.sizedBox(width: 24.0),
              // InkWell(
              //   onTap: () {},
              //   onHover: (value) {
              //     setState(() {
              //       isGraphic = value;
              //     });
              //   },
              //   child: buildAnimatedContainer(
              //     title: 'Graphic Designing',
              //     asset: AppAssets.brush,
              //     hover: isGraphic,
              //   ),
              // ),
              // Constants.sizedBox(width: 24.0),
              // InkWell(
              //   onTap: () {},
              //   onHover: (value) {
              //     setState(() {
              //       isDataAnalyst = value;
              //     });
              //   },
              //   child: buildAnimatedContainer(
              //     title: 'Digital Marketing',
              //     asset: AppAssets.analyst,
              //     hover: isDataAnalyst,
              //   ),
              // )
            ],
          ),
        ],
      ),
      paddingWidth: size.width * 0.04,
      bgColor: AppColors.bgColor,
    );
  }

  FadeInDown buildMyServicesText() {
    return FadeInDown(
      duration: const Duration(milliseconds: 1200),
      child: RichText(
        text: TextSpan(
          text: 'My ',
          style: AppTextStyles.headingStyles(fontSize: 30.0),
          children: [
            TextSpan(
              text: 'Services',
              style: AppTextStyles.headingStyles(
                  fontSize: 30.0, color: AppColors.robinEdgeBlue),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildAnimatedContainer({
    required String title,
    required String asset,
    required bool hover,
    double width = 350,
    double hoverWidth = 360,
  }) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: hover ? hoverWidth : width,
      height: hover ? 390 : 380,
      alignment: Alignment.center,
      transform: hover ? onHoverActive : onHoverRemove,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
      decoration: BoxDecoration(
        color: AppColors.bgColor2,
        borderRadius: BorderRadius.circular(30),
        border:
            hover ? Border.all(color: AppColors.themeColor, width: 3) : null,
        boxShadow: const [
          BoxShadow(
            color: Colors.black54,
            spreadRadius: 4.0,
            blurRadius: 4.5,
            offset: Offset(3.0, 4.5),
          )
        ],
      ),
      child: Column(
        children: [
          Image.asset(
            asset,
            width: 50,
            height: 50,
            color: AppColors.themeColor,
          ),
          Constants.sizedBox(height: 30.0),
          Text(
            title,
            style: AppTextStyles.montserratStyle(
                color: Colors.white, fontSize: 22.0),
          ),
          Constants.sizedBox(height: 12.0),
          Text(
            'Transform your ideas into stunning mobile applications with our expert app development services. Specializing in Flutter, we create high-performance, cross-platform apps that offer seamless user experiences on both iOS and Android. Whether youre a startup looking to launch your first app or an enterprise seeking to enhance your digital presence, we provide end-to-end solutions from concept to deployment. Partner with us to turn your vision into a reality with cutting-edge technology and creative design.',
            maxLines: 7,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.normalStyle(fontSize: 14.0),
            textAlign: TextAlign.center,
          ),
          // Constants.sizedBox(height: 20.0),
          // AppButtons.buildMaterialButton(buttonName: 'Read More', onTap: () {})
        ],
      ),
    );
  }
}

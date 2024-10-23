import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:master_pay/core/utility/size_config.dart';
import 'package:master_pay/core/utility/styles.dart';

import '../../../../../core/widgets/title_with_more.dart';
import 'home_header_section.dart';
import 'home_wallet_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    log((SizeConfig.screenHeight * 0.15).toString());
    return Scaffold(
      body: Column(
        children: [
          const HomeBlackPartOfView(),
          Container(
            padding: const EdgeInsets.only(left: 28, right: 28, top: 21),
            child: const Column(
              children: [
                TitleWithMore(
                  label: 'خدمـاتنـــا المميزة',
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HomeServiceItem(
                      svgUrlImg: 'lib/assets/icons/pay-link.svg',
                      title: 'Pay Link',
                    ),
                    HomeServiceItem(
                      svgUrlImg: 'lib/assets/icons/meta-ads.svg',
                      title: 'Meta ads',
                    ),
                    HomeServiceItem(
                      svgUrlImg: 'lib/assets/icons/master-pay.svg',
                      title: 'MasterPay',
                    ),
                    HomeServiceItem(
                      svgUrlImg: 'lib/assets/icons/express.svg',
                      title: 'express',
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HomeServiceItem(
                      svgUrlImg: 'lib/assets/icons/master-tap.svg',
                      title: 'MasterTAP',
                      isSoon: true,
                    ),
                    HomeServiceItem(
                      svgUrlImg: 'lib/assets/icons/store.svg',
                      title: 'store',
                      isSoon: true,
                    ),
                    HomeServiceItem(
                      svgUrlImg: 'lib/assets/icons/offers.svg',
                      title: 'Offers',
                      isSoon: true,
                    ),
                    HomeServiceItem(
                      svgUrlImg: 'lib/assets/icons/offers.svg',
                      title: 'Flay',
                      isSoon: true,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class HomeServiceItem extends StatelessWidget {
  final String title;
  final String svgUrlImg;
  final bool isSoon;

  const HomeServiceItem({
    super.key,
    required this.title,
    required this.svgUrlImg,
    this.isSoon = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        isSoon ? Container(
            padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 2),
            decoration: BoxDecoration(
              color: const Color(0xffF13131),
              borderRadius: BorderRadius.circular(16)
            ),
            child: Text('قريبا',style: Styles.style12().copyWith(fontWeight: FontWeight.bold),)) : const SizedBox(),
        const SizedBox(height: 2,),
        Container(
          width: 48,
          height: 48,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: const Color(0xffEDEDED))),
          child: SvgPicture.asset(
            svgUrlImg,
            width: 20,
            height: 20,
          ),
        ),
        Text(
          title,
          style: Styles.style12().copyWith(
              fontFamily: Styles.englishFontFamily,
              color: const Color(0xff838383),
              fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}

class HomeBlackPartOfView extends StatelessWidget {
  const HomeBlackPartOfView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 28, right: 28, top: 48),
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight * 0.40,
      decoration: const BoxDecoration(color: Color(0xff121212)),
      child: const Column(
        children: [
          HomeHeaderSection(),
          SizedBox(
            height: 32,
          ),
          HomeWalletSection(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utility/styles.dart';


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

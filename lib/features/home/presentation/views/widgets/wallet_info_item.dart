import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utility/styles.dart';

class WalletInfoItem extends StatelessWidget {
  final String label;
  final String svgImageUrl;
  const WalletInfoItem({
    super.key, required this.label, required this.svgImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 77,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
            color: const Color(0xff000000).withOpacity(0.1),
            width: 2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              svgImageUrl,
              width: 24,
              height: 24,
            ),
            const SizedBox(height: 4,),
            Text(
              label,
              style: Styles.style12().copyWith(
                  color: const Color(0xff8C91A2),
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}

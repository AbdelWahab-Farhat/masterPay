import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utility/styles.dart';


class IncrementWidget extends StatelessWidget {
  const IncrementWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
            color: const Color(0xff000000).withOpacity(0.1), width: 2),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '23%',
            style: Styles.style12().copyWith(
                color: const Color(0xff00CD88), fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 6,
          ),
          SvgPicture.asset(
            'lib/assets/icons/increment.svg',
            width: 20,
            height: 20,
          ),
        ],
      ),
    );
  }
}

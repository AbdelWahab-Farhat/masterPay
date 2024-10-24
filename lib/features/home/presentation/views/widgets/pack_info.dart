import 'package:flutter/material.dart';

import '../../../../../core/utility/styles.dart';


class PackInfo extends StatelessWidget {
  const PackInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '\$900',
          style: Styles.style24().copyWith(color: Colors.white),
        ),
        Text(
          'هو الرصيد المتبقي لانتهاء الباقة',
          style: Styles.style12().copyWith(color: const Color(0xffB3B3B3),fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}

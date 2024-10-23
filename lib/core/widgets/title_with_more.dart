import 'package:flutter/material.dart';

import '../utility/styles.dart';

class TitleWithMore extends StatelessWidget {
  final String label;
  final void Function()? onTap;
  const TitleWithMore({
    super.key, required this.label, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label,style: Styles.style16().copyWith(color: const Color(0xff161616)),),
        GestureDetector(
            onTap: onTap,
            child: Text('رؤية المزيد',style: Styles.style14().copyWith(color: const Color(0xff388DEB)),))
      ],
    );
  }
}

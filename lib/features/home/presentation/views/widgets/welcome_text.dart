import 'package:flutter/material.dart';

import '../../../../../core/utility/styles.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('مرحباً, عيسى المرادي',style: Styles.style16(),),
        const SizedBox(height: 6,),
        Text('مع  خدمــــــــــات MasterPay ',style: Styles.style12(),),
      ],
    );
  }
}

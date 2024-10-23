import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:master_pay/features/home/presentation/views/widgets/welcome_text.dart';

class HomeHeaderSection extends StatelessWidget {
  const HomeHeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const WelcomeText(),
        SvgPicture.asset('lib/assets/icons/Notification-off.svg'),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:master_pay/core/utility/size_config.dart';
import 'features/home/presentation/views/home_view.dart';

void main() {
  runApp(const MasterPay());
}

class MasterPay extends StatelessWidget {
  const MasterPay({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Master Pay',
      home: Directionality(
        textDirection: TextDirection.rtl, // Set global text direction to RTL
        child: HomeView(),
      ),
    );
  }
}

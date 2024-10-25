import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:master_pay/core/utility/size_config.dart';
import 'features/home/presentation/views/home_view.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) => const MasterPay(),
  ));
}

class MasterPay extends StatelessWidget {
  const MasterPay({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        title: 'Master Pay',
        home: const Directionality(
          textDirection: TextDirection.rtl, // Set global text direction to RTL
          child: HomeView(),
        ));
  }
}

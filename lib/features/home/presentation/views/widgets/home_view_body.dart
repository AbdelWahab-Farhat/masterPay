import 'package:flutter/material.dart';
import '../../../../../core/widgets/title_with_more.dart';
import 'home_black_part_of_view.dart';
import 'home_digital_products_section.dart';
import 'home_pack_section.dart';
import 'home_service_section.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              HomeBlackPartOfView(),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 28,left: 28,top: 28),
                    child: Column(
                      children: [
                        TitleWithMore(
                          label: 'خدمـاتنـــا المميزة',
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        HomeServiceSection(),
                        SizedBox(height: 28,),
                        HomePackSection(),
                        SizedBox(height: 14,),
                        TitleWithMore(
                          label: 'منتجات رقمية',
                          hasMore: false,
                        ),
                      ],
                    ),
                  ),
                  HomeDigitalProductsSection()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}



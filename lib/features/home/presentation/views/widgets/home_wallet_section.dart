import 'package:flutter/material.dart';
import 'package:master_pay/features/home/presentation/views/widgets/wallet_info_item.dart';

import '../../../../../core/utility/size_config.dart';
import '../../../../../core/utility/styles.dart';
import 'increment_widget.dart';


class HomeWalletSection extends StatelessWidget {
  const HomeWalletSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight * 0.22,
      padding: const EdgeInsets.only(top: 14),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Column(
        children: [
          Text(
            'رصيــــــــــــــد المحفظـــــــــة ',
            style: Styles.style14(),
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '100 دينار',
                style: Styles.style24(),
              ),
              const SizedBox(
                width: 8,
              ),
              const IncrementWidget(),
            ],
          ),
          const SizedBox(height: 16,),
          const Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              WalletInfoItem(label: 'More',svgImageUrl: 'lib/assets/icons/more.svg',),
              WalletInfoItem(label: 'Transfer',svgImageUrl: 'lib/assets/icons/transfer.svg',),
              WalletInfoItem(label: 'Pay Card',svgImageUrl: 'lib/assets/icons/pay-card.svg',),
              WalletInfoItem(label: 'Re-wallet',svgImageUrl: 'lib/assets/icons/re-wallet.svg',),

            ],
          ),

        ],
      ),
    );
  }
}

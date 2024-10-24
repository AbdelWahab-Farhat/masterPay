import 'package:flutter/material.dart';

import 'pack_info.dart';
import 'pack_progress.dart';


class HomePackSection extends StatelessWidget {
  const HomePackSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Row(
        children: [
          PackProgress(),
          SizedBox(width: 16,),
          PackInfo(),
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';


class PackProgress extends StatelessWidget {
  const PackProgress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: Stack(
        fit: StackFit.expand,
        children: [
          CircularProgressIndicator(
            value: 0.7,
            // Adjust this value to show different progress
            strokeWidth: 6,
            valueColor: const AlwaysStoppedAnimation<Color>(Colors.cyan),
            backgroundColor: Colors.grey[700],
          ),
          const Center(
            child: Icon(
              Icons.bar_chart,
              color: Colors.white,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}

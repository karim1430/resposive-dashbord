import 'package:flutter/material.dart';
import 'package:responsive_dashbord/views/utils/app_style.dart';

class RangeOption extends StatelessWidget {
  const RangeOption({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xffF1F1F1),
      ),
      child: Row(
        children: [
          const Text(
            'Monthly',
            style: AppStyle.styleMediam16,
          ),
          const SizedBox(
            width: 18,
          ),
          Transform.rotate(
              angle: -1.5707963267949,
              child: const Icon(Icons.arrow_back_ios_new))
        ],
      ),
    );
  }
}

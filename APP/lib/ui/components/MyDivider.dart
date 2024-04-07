// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:propert_ez/utils/colors.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Divider(
            color: dividerColor,
            thickness: 1.2,
            indent: 20,
            endIndent: 20,
          ),
        ),
        Text(
          'or',
          style: TextStyle(
              color: textColorWhite, fontSize: 12, fontWeight: FontWeight.w500),
        ),
        Expanded(
          child: Divider(
            color: dividerColor,
            thickness: 1.2,
            indent: 20,
            endIndent: 20,
          ),
        ),
      ],
    );
  }
}

// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:propert_ez/utils/colors.dart';

class AppTextField extends StatelessWidget {
  final String headerText;
  final String fieldHintText;
  const AppTextField({
    required this.headerText,
    required this.fieldHintText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                headerText,
                style: const TextStyle(
                  fontWeight: FontWeight.w300,
                  color: textColorWhite,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          SizedBox(
            height: 40,
            child: TextField(
              // keyboardType: TextInputType.name,
              // cursorColor: cursorColor ,
              // enableSuggestions: true,
              // obscureText: ,
              style: const TextStyle(
                color: textColorWhite,
              ),
              decoration: InputDecoration(
                hintText: fieldHintText,
                hintStyle: const TextStyle(
                    fontSize: 12,
                    color: textFieldTextColor,
                    fontWeight: FontWeight.w500),
                contentPadding: const EdgeInsets.fromLTRB(20, 0, 16, 0),
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide:
                      BorderSide(color: textFieldBorderColor, width: 1.5),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide: BorderSide(color: Colors.white, width: 1.5),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

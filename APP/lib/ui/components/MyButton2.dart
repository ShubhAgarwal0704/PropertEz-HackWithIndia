// ignore_for_file: file_names

import 'package:flutter/material.dart';

class LoginbuttonWidget extends StatelessWidget {
  const LoginbuttonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator LoginbuttonWidget - INSTANCE
    return SizedBox(
        width: 320,
        height: 36,
        child: Stack(children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 320,
                  height: 36,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(230),
                      topRight: Radius.circular(230),
                      bottomLeft: Radius.circular(230),
                      bottomRight: Radius.circular(230),
                    ),
                    color: Color.fromRGBO(35, 174, 255, 1),
                  ))),
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 320,
                  height: 36,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(230),
                      topRight: Radius.circular(230),
                      bottomLeft: Radius.circular(230),
                      bottomRight: Radius.circular(230),
                    ),
                    color: const Color.fromRGBO(0, 40, 64, 1),
                    border: Border.all(
                      color: const Color.fromRGBO(35, 174, 255, 1),
                      width: 1,
                    ),
                  ))),
          const Positioned(
              top: 10,
              left: 106.25958251953125,
              child: Text(
                'Explore 3D',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 16,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.w500,
                    height: 1),
              )),
        ]));
  }
}

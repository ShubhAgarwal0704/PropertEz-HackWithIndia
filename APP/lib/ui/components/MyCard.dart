import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 15, top: 10),
        width: 230,
        height: 309,
        child: Stack(fit: StackFit.expand, children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 200,
                  height: 170,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                    image: DecorationImage(
                        image: AssetImage('assets/images/home1.png'),
                        fit: BoxFit.fitHeight),
                  ))),
          Positioned(
              top: 160,
              left: 0,
              child: Container(
                  width: 202,
                  height: 100,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    color: Color.fromRGBO(1, 41, 64, 1),
                  ))),
          const Positioned(
              top: 174,
              left: 15,
              child: Text(
                'CRIPA Flats',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Montserrat',
                    fontSize: 12,
                    letterSpacing: 0,
                    fontWeight: FontWeight.bold,
                    height: 1),
              )),
          Positioned(
              top: 229,
              left: 15,
              child: SizedBox(
                  width: 111,
                  height: 20,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 111,
                            height: 20,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(5),
                                bottomLeft: Radius.circular(5),
                                bottomRight: Radius.circular(5),
                              ),
                              color: Color.fromRGBO(35, 174, 255, 1),
                            ))),
                    const Positioned(
                        top: 5,
                        left: 9,
                        child: Text(
                          'Rs. 11,999/ per month',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Montserrat',
                              fontSize: 8,
                              letterSpacing: 0,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                  ]))),
          Positioned(
              top: 177,
              left: 118,
              child: SizedBox(
                  width: 55,
                  height: 12,
                  child: Stack(children: <Widget>[
                    const Positioned(
                        top: 0,
                        left: 5,
                        child: Text(
                          '250m away',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(116, 140, 153, 1),
                              fontFamily: 'Commissioner',
                              fontSize: 8,
                              letterSpacing: 0,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    Positioned(
                        top: 2,
                        left: 0,
                        child: Container(
                            width: 2,
                            height: 2,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(116, 140, 153, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(2, 2)),
                            ))),
                  ]))),
          Positioned(
              top: 203,
              left: 15,
              child: SizedBox(
                  width: 45,
                  height: 12,
                  child: Stack(children: <Widget>[
                    const Positioned(
                        top: 0,
                        left: 5,
                        child: Text(
                          '4 seater',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(116, 140, 153, 1),
                              fontFamily: 'Commissioner',
                              fontSize: 8,
                              letterSpacing: 0,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    Positioned(
                        top: 2,
                        left: 0,
                        child: Container(
                            width: 2,
                            height: 2,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(116, 140, 153, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(2, 2)),
                            ))),
                  ]))),
          Positioned(
              top: 203,
              left: 65.5,
              child: SizedBox(
                  width: 35,
                  height: 12,
                  child: Stack(children: <Widget>[
                    const Positioned(
                        top: 0,
                        left: 5,
                        child: Text(
                          '2 BHK',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(116, 140, 153, 1),
                              fontFamily: 'Commissioner',
                              fontSize: 8,
                              letterSpacing: 0,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    Positioned(
                        top: 2,
                        left: 0,
                        child: Container(
                            width: 2,
                            height: 2,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(116, 140, 153, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(2, 2)),
                            ))),
                  ]))),
          Positioned(
              top: 203,
              left: 109,
              child: SizedBox(
                  width: 70,
                  height: 12,
                  child: Stack(children: <Widget>[
                    const Positioned(
                        top: 0,
                        left: 5,
                        child: Text(
                          'Full Furnished',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(116, 140, 153, 1),
                              fontFamily: 'Commissioner',
                              fontSize: 8,
                              letterSpacing: 0,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    Positioned(
                        top: 2,
                        left: 0,
                        child: Container(
                            width: 2,
                            height: 2,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(116, 140, 153, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(2, 2)),
                            ))),
                  ]))),
          const Positioned(
              top: 233,
              left: 144,
              child: SizedBox(
                  width: 17,
                  height: 15,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Text(
                          '4.7',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Commissioner',
                              fontSize: 10,
                              letterSpacing: 0,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                  ]))),
        ]));
  }
}

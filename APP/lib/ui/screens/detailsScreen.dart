import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:propert_ez/logic/services/fetchData.dart';
import 'package:propert_ez/utils/colors.dart';
import 'package:propert_ez/utils/images.dart';
import 'package:propert_ez/ui/components/MyButton2.dart';
import 'package:propert_ez/ui/components/MyButton3.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  void initState() {
    fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 4,
          ),
          Container(
            width: 1000,
            height: 300,
            child: Stack(
              fit: StackFit.expand,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset(
                    home1,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    height: 500,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "CRIPS Flat",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(
                  top: 20.0, left: 20.0, right: 20.0, bottom: 20.0),
              child: Image.asset('assets/images/Group 64.png')),
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              'Description',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            height: 100,
            child: SingleChildScrollView(
              child: const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  'cbhcwbe\nwdwcjncincjn\ncbhcbuicucei\nwdbchbceicbei\neihbcehbcebc\nebchebcbe\nehcbebc',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          LoginbuttonWidget(),
          SizedBox(
            height: 20,
          ),
          LoginbuttonWidget2()
        ],
      ),
    );
  }
}

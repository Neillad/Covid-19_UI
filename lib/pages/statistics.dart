import 'package:covid19_ui/core/constants.dart';
import 'package:covid19_ui/core/flutter_icons.dart';
import 'package:flutter/material.dart';

class stats extends StatefulWidget {
  @override
  _statsState createState() => _statsState();
}

class _statsState extends State<stats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.height,
                  height: MediaQuery.of(context).size.height * .25,
                  decoration: BoxDecoration(
                      color: AppColor.mainColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(45),
                          bottomRight: Radius.circular(45))),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        build_App_Bar(),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            "Statistics",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                            //textAlign: TextAlign.start,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 150,
                  left: 25,
                  child: Container(
                    height: MediaQuery.of(context).size.height * .23,
                    width: MediaQuery.of(context).size.width * .87,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black26),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: build_pie(),
                  ),
                ),
                Positioned(
                    top: 350,
                    right: 20,
                    child: Row(
                      children: [
                        build_male_female(
                            'MALE',
                            '59.9%',
                            Icon(
                              FlutterIcons.male,
                              size: 65,
                              color: Colors.blue,
                            )),
                        build_male_female(
                            'FEMALE',
                            '40.1%',
                            Icon(
                              FlutterIcons.female,
                              size: 65,
                              color: Colors.pinkAccent,
                            ))
                      ],
                    )),
                Positioned(
                  top: 520,
                  left: 40,
                  child: Container(
                    child: Row(
                      children: [
                        Text(
                          "Global Cases of ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Corona",
                          style: TextStyle(
                              color: AppColor.mainColor,
                              fontSize: 32,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: 540,
                    left: 25,
                    width: MediaQuery.of(context).size.width * .82,
                    height: MediaQuery.of(context).size.height * .28,
                    child: Container(
                      child: Image.asset("assets/images/map.png"),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container build_male_female(String text1, String text2, Icon icon) {
    return Container(
      margin: EdgeInsets.only(left: 15),
      height: 150,
      width: 170,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black26),
          borderRadius: BorderRadius.circular(25)),
      child: Row(
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 18, right: 5),
                child: Row(
                  children: [
                    Container(child: icon),
                    Container(
                      margin: EdgeInsets.only(
                        top: 1,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            text1,
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          Text("Confirmed \nCases\n"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30),
                child: Text(
                  text2,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Row build_pie() {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20, top: 10),
          height: 120,
          width: 120,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(100)),
        ),
        Container(
          margin: EdgeInsets.only(left: 20, top: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              build_stats_number("Confirmed", "23,44,142", Colors.blue),
              build_stats_number("Recovered", "13,424,12", Colors.greenAccent),
              build_stats_number("Deaths", "1,34,142", Colors.redAccent),
            ],
          ),
        ),
      ],
    );
  }

  Container build_stats_number(String text1, String text2, Color color) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      child: Row(
        children: [
          Icon(
            FlutterIcons.label,
            color: color,
            size: 50,
          ),
          Container(
            child: Column(
              children: [
                Text(
                  text1,
                  style: TextStyle(fontSize: 16),
                ),
                Text(text2)
              ],
            ),
          )
        ],
      ),
    );
  }

  Padding build_App_Bar() {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0, left: 5, right: 10),
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: null,
                  icon: Icon(FlutterIcons.menu, color: Colors.white)),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                        image: AssetImage('assets/images/profile.jpg'))),
              )
            ],
          ),
        ),
      ),
    );
  }
}

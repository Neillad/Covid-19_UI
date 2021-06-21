import 'package:covid19_ui/core/constants.dart';
import 'package:covid19_ui/core/flutter_icons.dart';
import 'package:covid19_ui/pages/statistics.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: AppColor.mainColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
              child: build_header(),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                          text: "Symptoms of",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                                text: " Covid-19",
                                style: TextStyle(
                                    color: AppColor.mainColor,
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold))
                          ]),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 140,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.only(left: 8),
                        physics: BouncingScrollPhysics(),
                        children: [
                          symptoms_scroll_bar("assets/images/1.png", "Fever"),
                          symptoms_scroll_bar(
                              "assets/images/2.png", "Dry cough"),
                          symptoms_scroll_bar(
                              "assets/images/3.png", "Headache"),
                          symptoms_scroll_bar(
                              "assets/images/4.png", "Breathless"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Text(
                        "Prevention",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 120,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        children: [
                          build_Prevention_Scroll_View(
                              "assets/images/a10.png", "WASH", "hands often"),
                          build_Prevention_Scroll_View(
                              "assets/images/a10.png", "WASH", "hands often"),
                          build_Prevention_Scroll_View(
                              "assets/images/a10.png", "WASH", "hands often"),
                          build_Prevention_Scroll_View(
                              "assets/images/a10.png", "WASH", "hands often"),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) => stats()));
                      },
                      child: Container(
                          margin: EdgeInsets.only(right: 3),
                          height: MediaQuery.of(context).size.height * .11,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black12),
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                spreadRadius: 1,
                                offset: Offset(1, 1),
                                blurRadius: 3,
                              )
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 7, top: 6, bottom: 6),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(right: 20),
                                      child:
                                          Image.asset("assets/images/map.png")),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          RichText(
                                              text: TextSpan(
                                                  text: 'CASES\n',
                                                  style: TextStyle(
                                                      color: AppColor.mainColor,
                                                      fontSize: 21,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  children: [
                                                TextSpan(
                                                    text:
                                                        "Overview Worldwide\n",
                                                    style: TextStyle(
                                                        fontSize: 17,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Colors.black)),
                                                TextSpan(
                                                    text: "123,234,864",
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Colors.black))
                                              ])),
                                          IconButton(
                                              icon: Icon(Icons.arrow_forward),
                                              color: Colors.black,
                                              onPressed: () {})
                                        ],
                                      ),
                                    ],
                                  ),
                                ]),
                          )),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Column build_Prevention_Scroll_View(
      String image, String text1, String text2) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 15, bottom: 15, right: 10, left: 15),
          child: Container(
            padding: EdgeInsets.only(right: 10),
            child: Row(
              children: [
                Image.asset(image),
                SizedBox(
                  width: 9,
                ),
                RichText(
                    text: TextSpan(
                        text: "$text1\n",
                        style: TextStyle(
                            color: AppColor.mainColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                        children: [
                      TextSpan(
                          text: text2,
                          style: TextStyle(
                            color: Colors.black,
                          ))
                    ]))
              ],
            ),
          ),
          height: 100,
          width: 200,
          margin: EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black12),
              boxShadow: [
                BoxShadow(
                    color: Colors.black38,
                    spreadRadius: 0.5,
                    blurRadius: 3,
                    offset: Offset(1, 1))
              ]),
        ),
        SizedBox(
          height: 6,
        ),
      ],
    );
  }

  Column symptoms_scroll_bar(String path, String text) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              gradient: LinearGradient(
                  colors: [AppColor.mainColor.withOpacity(.1), Colors.white],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
              border: Border.all(color: Colors.black12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black38,
                  spreadRadius: 1,
                  blurRadius: 3,
                ),
              ]),
          child: Image.asset(path),
          padding: EdgeInsets.only(top: 10, bottom: 2),
          margin: EdgeInsets.only(right: 20),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
        )
      ],
    );
  }

  Column build_header() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 25),
          child: build_App_Bar(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 19),
          child: Text(
            "Covid-19",
            style: TextStyle(
                color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 19),
          child: Text(
            "Coronavirus Relief Funds",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 19),
          child: Text(
            "Through this funds will help in providing more facilities \nfor and patients and front line workers",
            style: TextStyle(
              color: Colors.white60,
              fontSize: 14,
              fontWeight: FontWeight.w800,
            ),
            textAlign: TextAlign.start,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            children: [
              Expanded(
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.blue,
                  child: Text(
                    "Donate Now",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.red,
                  child: Text(
                    "Emergency",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Row build_App_Bar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: Icon(FlutterIcons.menu, color: Colors.white),
          onPressed: null,
        ),
        Container(
          margin: EdgeInsets.all(16),
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                  image: AssetImage("assets/images/profile.jpg"))),
        ),
      ],
    );
  }
}

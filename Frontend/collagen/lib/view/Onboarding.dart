import 'dart:io';
import 'package:collagen/Screens/Login/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Material materialButton;
  late int index;
  final onboardingPagesList = [
    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/ob1.png',
            ),
            fit: BoxFit.cover,
          ),
          color: Colors.transparent,
          border: Border.all(
            width: 0.0,
            color: Colors.black,
          ),
        ),
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 160,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 45.0,
                  vertical: 40.0,
                ),
                child: Image.asset(
                  'assets/images/onb1.png',
                  color: Colors.white,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 45, vertical: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Media Sosial',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 0.7,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Posting foto favoritmu dan mengobrol seru dengan temanmu',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                      letterSpacing: 0.7,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/ob2.png',
            ),
            fit: BoxFit.cover,
          ),
          color: Colors.transparent,
          border: Border.all(
            width: 0.0,
            color: Colors.black,
          ),
        ),
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 160,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 45.0,
                  vertical: 40.0,
                ),
                child: Image.asset(
                  'assets/images/onb2.png',
                  color: Colors.white,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 45, vertical: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Belanja Kebutuhan',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 0.7,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Fitur jual beli barang secara online antar mahasiswa se-Indonesia',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                      letterSpacing: 0.7,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/ob3.png',
            ),
            fit: BoxFit.cover,
          ),
          color: Colors.transparent,
          border: Border.all(
            width: 0.0,
            color: Colors.black,
          ),
        ),
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 160,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 45.0,
                  vertical: 40.0,
                ),
                child: Image.asset(
                  'assets/images/onb3.png',
                  color: Colors.white,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 45, vertical: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Layanan Konsultasi',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 0.7,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Membantu anda dalam berbagai permasalahan seperti psikologi, akademik dan lain-lain',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                      letterSpacing: 0.7,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ];

  @override
  void initState() {
    super.initState();
    materialButton = _skipButton();
    index = 0;
  }

  Material _skipButton({void Function(int)? setIndex}) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          if (setIndex != null) {
            index = 2;
            setIndex(2);
          }
        },
        child: const Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            'Skip ->',
            style: TextStyle(
                fontSize: 20,
                backgroundColor: Colors.transparent,
                color: Colors.white),
          ),
        ),
      ),
    );
  }

  Material get _signupButton {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, LoginScreen.routeName);
        },
        child: const Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            'Start ->',
            style: TextStyle(
                fontSize: 20,
                backgroundColor: Colors.transparent,
                color: Colors.white),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: Onboarding(
          pages: onboardingPagesList,
          onPageChange: (int pageIndex) {
            index = pageIndex;
          },
          startPageIndex: 0,
          footerBuilder: (context, dragDistance, pagesLength, setIndex) {
            return DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: ColoredBox(
                color: Color(0xff143EB4),
                child: Padding(
                  padding: const EdgeInsets.all(45.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => exit(0),
                        child: const Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            '<- Exit',
                            style: TextStyle(
                                fontSize: 20,
                                backgroundColor: Colors.transparent,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 0,
                      ),
                      SizedBox(
                        height: 60,
                        child: CustomIndicator(
                            netDragPercent: dragDistance,
                            pagesLength: pagesLength,
                            indicator: Indicator(
                              indicatorDesign: IndicatorDesign.polygon(
                                polygonDesign: PolygonDesign(
                                  polygon: DesignType.polygon_circle,
                                ),
                              ),
                            )),
                      ),

                      SizedBox(
                        width: 50,
                      ),
                      index == pagesLength - 1
                          ? _signupButton
                          : _skipButton(setIndex: setIndex)
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_travel_app/Widgets/app_large_text.dart';
import 'package:flutter_travel_app/Widgets/app_text.dart';
import 'package:flutter_travel_app/Widgets/responsibe_button.dart';
import 'package:flutter_travel_app/misc/colors.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    'welcome-one.png',
    'welcome-two.png',
    'welcome-three.png',
  ];

  List myText = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/" + images[index],
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
              child: Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      AppLargeText(text: 'Trips'),
                      AppText(text: 'Mountain', size: 30),
                      const SizedBox(height: 20),
                      Container(
                        width: 250,
                        child: AppText(
                          text:
                              'Mountain hikes give you an incredible sense of freedom along with endurance test',
                          color: AppColors.bigTextColor,
                          size: 14,
                        ),
                      ),
                      ResponsiveButton(),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

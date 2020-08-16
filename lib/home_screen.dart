import 'package:covid_app/clipper_file.dart';
import 'package:covid_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ClipPath(
            clipper: MyClipper(),
            child: Container(
              padding: EdgeInsets.only(left: 40, top: 50, right: 20),
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xFF3383CD),
                    Color(0xFF11249F),
                  ],
                ),
                image: DecorationImage(
                  image: AssetImage('assets/images/virus.png'),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: SvgPicture.asset('assets/icons/menu.svg'),
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: Stack(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/Drcorona.svg',
                          width: 230,
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter,
                        ),
                        Positioned(
                          top: 20,
                          left: 150,
                          child: Text(
                            'All you need \nis to stay at home',
                            style: kHeadingTextStyle.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
                color: Color(0xFFE5E5E5),
              ),
            ),
            child: Row(
              children: [
                SvgPicture.asset('assets/icons/maps-and-flags.svg'),
                SizedBox(width: 20),
                Expanded(
                  child: DropdownButton(
                    value: 'Indonesia',
                    underline: SizedBox(),
                    isExpanded: true,
                    // icon: Icon(Icons.arrow_drop_down_circle,
                    // color: Color(0xFF11249F)),
                    icon: SvgPicture.asset('assets/icons/dropdown.svg'),
                    items: ['Indonesia', 'Bangladesh', 'United States', 'Japan']
                        .map<DropdownMenuItem<String>>(
                      (String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      },
                    ).toList(),
                    onChanged: (value) {},
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Case Update\n',
                            style: kTitleTextstyle,
                          ),
                          TextSpan(
                            text: 'Newest Update March 28',
                            style: TextStyle(color: kTextLightColor),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Text(
                      'See more details',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(20),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

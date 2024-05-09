import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:real_estate_app/constants.dart';
// import 'package:real_estate_app/widgets/menu/aboutas.dart';
// import 'package:real_estate_app/widgets/menu/contact_info.dart';
// import 'package:real_estate_app/widgets/menu/goals.dart';

import '../../constants.dart';
import 'contact_info.dart';
import 'goals.dart';
import 'logo.dart';

class SideMenuSection extends StatelessWidget {
  SideMenuSection({Key? key}) : super(key: key);
  Future<void> UrLauncher(String name) async {
    String url = "https://www.facebook.com";
    if (name == 'facebook') {
      url = "https://www.facebook.com/people/Ahmad-Abo-Hamzeh/100012386057565/";
    } else if (name == 'whatsapp') {
      url = "whatsapp://send?phone=+905312378190";
    } else if (name == 'instagram') {
      url = "https://z-p15.www.instagram.com/abohamzeh.a/";
    } else if (name == 'telegram') {
      url = "https://telegram.me/+905312378190";
      //https://telegram.me/905555555555
    }

    if (await canLaunch("${url}")) {
      await launch(url);
    } else {
      throw 'could not launch $url ';
    }
  }

  //final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Drawer(
      //key: _scaffoldKey,
      child: SafeArea(
        child: Column(
          children: [
            Logo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About us',
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: kDefaultPadding / 2, left: 5),
                      child: Row(
                        children: [
                          //SvgPicture.asset('assets/icons/check.svg'),
                          //SizedBox(width: kDefaultPadding / 4),
                          Expanded(
                            child: Text('We are experts in supply, installation,repair, maintenance and generalconsultants in' +
                                ' a wide range of medical equipment. We have exellent records in our ' +
                                'services in Turkiye and across the world since our inception in 2007'),
                          ),
                        ],
                      ),
                    ),
                    //  AboutAs(),
                    Divider(),
                    Goals(),
                    Divider(),
                    ContactInfo(),
                    SizedBox(height: kDefaultPadding),
                    /*
                    TextButton(
                      onPressed: () {},
                      child: FittedBox(
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/icons/download.svg'),
                            SizedBox(width: kDefaultPadding / 2),
                           
                            Text(
                              'Download Brochure',
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color),
                            ),
                           
                          ],
                        ),
                      ),
                    ),
                    */
                    Container(
                      margin: EdgeInsets.only(top: kDefaultPadding * 2),
                      color: kSecondaryColor,
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              UrLauncher("instagram");
                            },
                            icon: SvgPicture.asset(
                                'assets/icons/instagram-logo-8869.svg'),
                          ),
                          IconButton(
                            onPressed: () {
                              UrLauncher("whatsapp");
                            },
                            icon: SvgPicture.asset(
                                'assets/icons/whatsapp-logo-4464.svg'),
                          ),

                          /*
                               ElevatedButton(onPressed: (){}, 
                          child:SvgPicture.asset('assets/icons/github.svg'),),
                          */
                          IconButton(
                            onPressed: () {
                              UrLauncher("facebook");
                            },
                            icon: SvgPicture.asset(
                                'assets/icons/facebook-2873.svg'),
                          ),
                          IconButton(
                            onPressed: () {
                              UrLauncher("telegram");
                            },
                            icon: SvgPicture.asset(
                                'assets/icons/telegram-logo-5941.svg'),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
/*
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_estate_app/constants.dart';
import 'package:real_estate_app/widgets/menu/contact_info.dart';
import 'package:real_estate_app/widgets/menu/goals.dart';

import 'logo.dart';

class SideMenuSection extends StatelessWidget {
  const SideMenuSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Logo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ContactInfo(),
                    Divider(),
                    Goals(),
                    Divider(),
                    SizedBox(height: kDefaultPadding),
                    TextButton(
                      onPressed: () {},
                      child: FittedBox(
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/icons/download.svg'),
                            SizedBox(width: kDefaultPadding / 2),
                           /*
                            Text(
                              'Download Brochure',
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color),
                            ),
                           */
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: kDefaultPadding * 2),
                      color: kSecondaryColor,
                      child: Row(
                        children: [
                          //

                          //
                          Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/icons/linkedin.svg'),
                          ),

                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/icons/github.svg'),
                          ),

                          /*
                               ElevatedButton(onPressed: (){}, 
                          child:SvgPicture.asset('assets/icons/github.svg'),),
                          */
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/icons/twitter.svg'),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/icons/dribble.svg'),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

*/
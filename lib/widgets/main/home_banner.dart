import 'package:flutter/material.dart';
import 'package:medical_wep/widgets/menu/side_menu_section.dart';

import '../../constants.dart';
import '../../reponsive.dart';
// import 'package:real_estate_app/constants.dart';
// import 'package:real_estate_app/responsive.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 1 : 1.7,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            'https://media.istockphoto.com/id/1067940454/tr/foto%C4%9Fraf/tomograph.jpg?s=612x612&w=0&k=20&c=cqTFxQJKHf5Ayl3gHy8N_mivbbeudhwKCKWhxO-lWKU=',
            fit: BoxFit.cover,
          ),
          /*
          Image.asset(
            'assets/images/kak.jpg',

            //fit: BoxFit.cover,
          ),
        */
          Container(
            color: kDarkColor.withOpacity(0.10),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'As-Saad Medicals',
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline3!.copyWith(
                          color: Colors.green[800], fontWeight: FontWeight.bold)
                      : Theme.of(context).textTheme.headline5!.copyWith(
                          color: Colors.green[800],
                          fontWeight: FontWeight.bold),
                ),
                Divider(color: Colors.black, endIndent: 500),

                /*
                 Text(
                  'As-Saad Medicals',
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline3!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold)
                      : Theme.of(context).textTheme.headline5!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                ),
                */
                Text(
                  'Medical Equipmets & \nConsultancy Services!',
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline4!.copyWith(
                          color: Colors.grey[700], fontWeight: FontWeight.bold)
                      : Theme.of(context).textTheme.headline5!.copyWith(
                          color: Colors.grey[700], fontWeight: FontWeight.bold),
                ),
                SizedBox(height: kDefaultPadding),
                ElevatedButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        horizontal: kDefaultPadding * 2,
                        vertical: kDefaultPadding),
                    backgroundColor: kPrimaryColor,
                  ),
                  onPressed: () {
                    // DrawerController.of(context)!.open();
                    // final _leftMenuScaffoldKey = GlobalKey<ScaffoldState>();
                    // _leftMenuScaffoldKey.currentState!.openDrawer();
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SideMenuSection(),
                    ));
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SideMenuSection(),
                      ),
                    );
                  },
                  child: Text(
                    'VIEW US',
                    style: TextStyle(color: kDarkColor),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:medical_wep/widgets/main/projects.dart';
import 'package:medical_wep/widgets/main/recommendations.dart';

import '../../constants.dart';
import '../../reponsive.dart';
import '../../screens/home_screen.dart';
import '../menu/side_menu_section.dart';
import 'home_banner.dart';
import 'icon_info.dart';

class MainSection extends StatelessWidget {
  const MainSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: kBgColor,
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(Icons.menu),
                ),
              ),
            ),
      drawer: SideMenuSection(),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              children: const [
                HomeBanner(),
                IconInfo(),
                Projects(),
                Recommendations(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

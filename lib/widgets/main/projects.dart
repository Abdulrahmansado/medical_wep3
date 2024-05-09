import 'package:flutter/material.dart';
import 'package:medical_wep/widgets/main/project_card.dart';

import '../../constants.dart';
import '../../models/projects.dart';
import '../../reponsive.dart';
// import 'package:real_estate_app/constants.dart';
// import 'package:real_estate_app/models/projects.dart';
// import 'package:real_estate_app/responsive.dart';
// import 'package:real_estate_app/widgets/main/project_card.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Our Projects',
          style: Theme.of(context).textTheme.headline6,
        ),
        Responsive(
          // desktop: Container(
          //   child: buildGridView(
          //     itemCount: demoProjects.length,
          //     crossAxisCount: 3,
          //     childAspectRatio: 0.75,
          //     itemBuilder: (context, index) =>
          //         ProjectCard(project: demoProjects[index]),
          //   ),
          // ),
          desktop: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: MediaQuery.of(context).size.width / 3,
                  mainAxisExtent: 500,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15),
              itemCount: demoProjects.length,
              itemBuilder: (BuildContext ctx, index) {
                return ProjectCard(project: demoProjects[index]);
              }
          ),
          tablet: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent:  MediaQuery.of(context).size.width <= 900 ? MediaQuery.of(context).size.width / 2 : MediaQuery.of(context).size.width / 3,
                  mainAxisExtent: 500,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15),
              itemCount: demoProjects.length,
              itemBuilder: (BuildContext ctx, index) {
                return ProjectCard(project: demoProjects[index]);
              }
          ),
          // tablet: Container(
          //   child: buildGridView(
          //     itemCount: demoProjects.length,
          //     crossAxisCount:
          //     MediaQuery.of(context).size.width < 900 ? 2 : 3,
          //     childAspectRatio: 0.75,
          //     itemBuilder: (context, index) =>
          //         ProjectCard(project: demoProjects[index]),
          //   ),
          // ),
          mobileLarge: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent:  MediaQuery.of(context).size.width / 2,
                  mainAxisExtent: 500,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15),
              itemCount: demoProjects.length,
              itemBuilder: (BuildContext ctx, index) {
                return ProjectCard(project: demoProjects[index]);
              }
          ),
          // mobileLarge: Container(
          //   child: buildGridView(
          //     itemCount: demoProjects.length,
          //     crossAxisCount: 2,
          //     childAspectRatio: 0.75,
          //     itemBuilder: (context, index) =>
          //         ProjectCard(project: demoProjects[index]),
          //   ),
          // ),
          mobile: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent:  MediaQuery.of(context).size.width,
                  mainAxisExtent: 500,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15),
              itemCount: demoProjects.length,
              itemBuilder: (BuildContext ctx, index) {
                return ProjectCard(project: demoProjects[index]);
              }
          ),

          // mobile: Container(
          //   child: buildGridView(
          //     itemCount: demoProjects.length,
          //     crossAxisCount: 1,
          //     childAspectRatio: 0.75,
          //     itemBuilder: (context, index) =>
          //         ProjectCard(project: demoProjects[index]),
          //   ),
          // ),
        )
      ],
    );
  }

  GridView buildGridView({
    required int itemCount,
    required int crossAxisCount,
    required double childAspectRatio,
    required IndexedWidgetBuilder itemBuilder,
  }) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: itemCount,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          childAspectRatio: childAspectRatio,
          crossAxisSpacing: kDefaultPadding,
          mainAxisSpacing: kDefaultPadding,
        ),
        itemBuilder: itemBuilder);
  }
}

import 'package:flutter/material.dart';
// import 'package:real_estate_app/models/projects.dart';

import '../../constants.dart';
import '../../models/projects.dart';
import '../../screens/detail_screen.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);
  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding),
      color: kSecondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Image.asset(
              project.image!,
              fit: BoxFit.cover,
              height: 500,
              width: 500,
            ),
          ),
          SizedBox(height: kDefaultPadding),
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          SizedBox(height: kDefaultPadding),
          // Expanded(
          //   child: Text(
          //     project.description!,
          //     style: TextStyle(height: 1.5),
          //   ),
          // ),
          SizedBox(height: kDefaultPadding),
          TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return DetailScreen(project.image!);
                }));
              },
              child: Text(
                'More info >',
                style: TextStyle(color: kPrimaryColor),
              ))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
// import 'package:real_estate_app/constants.dart';

import '../../constants.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildContactInfo(
          title: 'Address',
          text: 'konya / modesa industrial',
        ),
        buildContactInfo(
          title: 'Country',
          text: 'Turkey',
        ),
        buildContactInfo(
          title: 'Email',
          text: 'ahmed74pac@gmail.com',
        ),
        buildContactInfo(
          title: 'Mobile',
          text: '+905312378190',
        ),
        buildContactInfo(
          title: 'Website',
          text: 'my@website.com',
        ),
      ],
    );
  }

  Padding buildContactInfo({required String title, required String text}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$title',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(width: 10),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }
}

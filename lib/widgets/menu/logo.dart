import 'package:flutter/material.dart';
import '../../constants.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: kSecondaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(flex: 2),
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSvruIQZ9AJsbkD17XmM_dr6V7iiQWY7gRvA&usqp=CAU',
              width: 700,
              height: 170,
            )
            /*
            Image(
              image: AssetImage('assets/images/logo.png'),
              width: 100.0,
            ),
          */
            ,
            Spacer(),
            Text(
              'As-Saad Medicals',
              style: Theme.of(context).textTheme.subtitle2,
            ),
            /*
            Text(
              'Medical Equipmets \n Consultancy Services',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
           */
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}

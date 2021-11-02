import 'package:flutter/material.dart';

class InternetConnection extends StatelessWidget {
  const InternetConnection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text('Connection to internet then try again!',
            style: TextStyle(color: Colors.black, fontSize: 25)));
  }
}

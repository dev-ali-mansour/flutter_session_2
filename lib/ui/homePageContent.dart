import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_session_2/ui/interactiveCard.dart';

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.fromLTRB(10, 20, 10, 20),
      padding: new EdgeInsets.all(55),
      color: Colors.lightBlue,
      child: new InteractiveCard(),
    );
  }
}

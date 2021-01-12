import 'package:flutter/material.dart';

class InteractiveCard extends StatefulWidget {
  @override
  State<InteractiveCard> createState() {
    return new _InteractiveState();
  }
}

class _InteractiveState extends State<InteractiveCard> {
  var name = '';

  @override
  Widget build(BuildContext context) {
    return new Container(
        padding: new EdgeInsets.all(10),
        color: Colors.grey,
        child: new Center(
            child: new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
              new Text(
                'Welcome to Flutter Session 20',
                textDirection: TextDirection.ltr,
              ),
              new InkWell(
                child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new Icon(Icons.adjust),
                      new Text(
                        'Click Me',
                        textDirection: TextDirection.ltr,
                      )
                    ]),
                onTap: () => debugPrint('you clicked  me once!'),
                onLongPress: () =>
                    debugPrint('You pressed on me For a long time!'),
                onDoubleTap: () => debugPrint('You clicked me twice!'),
              ),
              new Text(
                'Welcome back $name',
                textDirection: TextDirection.ltr,
              ),
              new RaisedButton(
                onPressed: _onGreetingsButtonClicked,
                child: new Text(
                  'Greetings',
                  textDirection: TextDirection.ltr,
                ),
              ),
              new FlatButton(
                  onPressed: _onClearButtonClicked,
                  child: new Text(
                    'Clear',
                    textDirection: TextDirection.ltr,
                  )),
                  new IconButton(icon: new Icon(Icons.account_balance_rounded), onPressed:_onIconButtonClicked )
            ])));
  }

  void _onGreetingsButtonClicked() {
    setState(() {
      name = 'Ali Mansour';
    });
  }

  void _onClearButtonClicked() {
    setState(() {
      name='';
    });
  }

  void _onIconButtonClicked(){
   setState(() {
     name ='to home!';
   });
  }
}

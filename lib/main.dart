import 'package:flutter/material.dart';
import 'package:flutter_session_2/ui/homePageContent.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Session 2',
      home: new HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.indigo,
      appBar: new AppBar(
        backgroundColor: Colors.purple,
        title: new Text(
          'Session 2',
          textDirection: TextDirection.ltr,
        ),
        actions: [IconButton(icon: new Icon(Icons.person), onPressed: null)],
      ),
      body: new HomeContent(),
      bottomNavigationBar: new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
              icon: new Icon(Icons.home), label: 'Home'),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.person), label: 'Profile'),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.settings), label: 'Settings'),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.notification_important),
              label: 'Notifications'),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.access_alarm_sharp), label: 'Alarms')
        ],
        type: BottomNavigationBarType.fixed,
        onTap: (x) => _onItemTapped(x),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _onAddButtonClicked,
        backgroundColor: Colors.purple,
        child: new Icon(Icons.add),
        tooltip: 'Add Contact',
      ),
    );
  }

  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        debugPrint('You selected Home page');
        break;
      case 1:
        debugPrint('You selected Profile page');
        break;
      case 2:
        debugPrint('You selected Settings page');
        break;
      case 3:
        debugPrint('You selected Notifications page');
        break;
      case 4:
        debugPrint('You selected Alarms page');
        break;
      default:
        debugPrint('Invalid item index');
        break;
    }
  }

  void _onAddButtonClicked(){
    debugPrint('Float Action Button: You clicked me');
  }
}

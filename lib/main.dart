import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/screens/chat_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xff075e54),
        indicatorColor: Colors.white,
        primaryColorDark: Color(0xFF128C7E),
        primaryIconTheme: IconThemeData(
          color: Colors.white,
        ),
        textTheme: TextTheme(
          headline6: TextStyle(color: Colors.white),
        ),
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  final _tabs = <Widget>[
    Tab(icon: Icon(Icons.camera_alt)),
    Tab(text: 'CHATS'),
    Tab(text: 'STATUS'),
    Tab(text: 'CALLS'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp"),
          actions: [
            IconButton(icon: Icon(Icons.search), onPressed: (){}),
            IconButton(icon: Icon(Icons.more_vert), onPressed: (){}),
          ],
          bottom: TabBar(tabs: _tabs),
        ),
        body: TabBarView(
          children: [
            Text('camera'),
            ChatList(),
            Text('status'),
            Text('calls'),
          ],
        ),
      ),
    );
  }
}

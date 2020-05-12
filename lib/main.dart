import 'package:flutter/material.dart';
import 'package:scrow/myPages/HomeScreen.dart';
import 'package:scrow/myPages/agendaDetails.dart';
import 'package:scrow/myPages/profileDetailPage.dart';
import 'package:scrow/myPages/AgendaPage.dart';

void main(){
  runApp(AgendaApp());
}

class AgendaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FireBaseApp",
      theme: ThemeData(
        fontFamily: "CaviarDreams",
          primarySwatch: Colors.cyan,
          canvasColor: Colors.cyan[50]
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      routes: {
        profileDetailPage.routeName: (context) => profileDetailPage(),
        AgendaDetailPage.routeName: (context) => AgendaDetailPage(),

      },
    );
  }
}

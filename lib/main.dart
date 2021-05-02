import 'package:PetKonnect/screens/auth_screen.dart';
import 'package:PetKonnect/screens/edit_profile.dart';
import 'package:PetKonnect/screens/mypet_profile_screen.dart';
import 'package:PetKonnect/screens/profile_screen.dart';
import 'package:flutter/material.dart';

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
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AuthScreen(),
      routes: {
        ProfileScreen.routeName: (ctx) => ProfileScreen(),
        EditProfile.routeName: (ctx) => EditProfile(),
        MyPetProfileScreen.routeName: (ctx) => MyPetProfileScreen(),
      },
    );
  }
}

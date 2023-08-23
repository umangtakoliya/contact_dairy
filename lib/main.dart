import 'package:contact_dairy/screen/add_contact_page.dart';
import 'package:contact_dairy/screen/home_page.dart';
import 'package:contact_dairy/utils/app_theme_.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme:appThemeData.Lighttheme,
    darkTheme: appThemeData.Darktheme,
    themeMode: ThemeMode.system,
    routes: {
      '/':(context) => homepage(),
      'add_contact_page':(context) => add_contact_page(),
    },
  ));
}
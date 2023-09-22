

import 'package:contact_dairy/provider/contact_provider.dart';
import 'package:contact_dairy/provider/theme_provider.dart';
import 'package:contact_dairy/screen/add_contact_page.dart';
import 'package:contact_dairy/screen/detail_page.dart';
import 'package:contact_dairy/screen/home_page.dart';
import 'package:contact_dairy/screen/one_time_intro_page';
import 'package:contact_dairy/utils/my_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'model/theme_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();

  bool isVisitOnce = preferences.getBool("visited") ?? false;
  bool saved_theam = preferences.getBool("save_theam") ?? false;
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<TheamProvider>(
          create: (context) => TheamProvider(
            myTheamModel: TheamChange(isDark: saved_theam),
          ),
        ),
        ChangeNotifierProvider<ContactProvider>(
          create: (context) => ContactProvider(),
        )
      ],
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: myTheme.lightTheme,
        darkTheme: myTheme.darkTheme,
        themeMode:
        (Provider.of<TheamProvider>(context).myTheamModel.isDark == false)
            ? ThemeMode.light
            : ThemeMode.dark,
        initialRoute: (isVisitOnce == true) ? 'home' : '/',
        routes: {
          '/': (context) => One_Time_Intro_Page (),
          'home': (context) =>  HomePage(),
          'add_contact_page': (context) =>  AddContactPage(),
          'detail': (context) =>  Detail_Page(),
        },
      ),
    ),
  );
}
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  get colorizeTextStyle => colorizeTextStyle;

  get colorizeColors => colorizeColors;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    floatingActionButton: Theme(
      data:ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.red,
      ) ,
      child: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context,'add_contact_page');
        },
        child: Icon(Icons.add),
      ),
    ),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home Page"),
      ),
      body: Center(
        child: DefaultTextStyle(
          style: Theme.of(context).textTheme.bodyLarge!,
            child: AnimatedTextKit(
              repeatForever: true,
                animatedTexts: [
                WavyAnimatedText('No contacts Added yet....',textStyle: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 20
                )),


            ],
          ),
        ),
      ),
    );
  }
}

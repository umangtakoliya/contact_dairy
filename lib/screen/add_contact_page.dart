import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class add_contact_page extends StatefulWidget {
  const add_contact_page({super.key});

  @override
  State<add_contact_page> createState() => _add_contact_pageState();
}

class _add_contact_pageState extends State<add_contact_page> {
  GlobalKey<FormState> formkey =GlobalKey<FormState>();
  int initialIndex =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       centerTitle: true,
       title: AnimatedTextKit(
           repeatForever: true,
           animatedTexts: [
           WavyAnimatedText('Add Contact Here..',textStyle: TextStyle(fontWeight: FontWeight.bold,
           fontSize: 25
       ),
       ),
       ]
     ),
    ),
     body: Form(
       key: formkey,
       child: Stepper(
         currentStep: initialIndex,
         onStepCancel: (){
           setState(() {
             if (initialIndex != 0){
               --initialIndex;
             }
           });
         },
         onStepContinue: (){
           setState(() {
             if (initialIndex!=4){
               ++initialIndex;
             }
           });
         },
         steps: [

           Step(
             state: (initialIndex == 0)? StepState.editing:StepState.indexed,
               isActive: (initialIndex==0)?true : false,
               title: Text("your photo"), content:CircleAvatar(
             backgroundColor: Colors.grey,
             radius: 50,
           )),
           Step(
               state: (initialIndex == 1)? StepState.editing:StepState.indexed,
               isActive: (initialIndex==1)?true : false,
               title: Text("First Name"), content:TextFormField(
             decoration: InputDecoration(
               hintText: "Enter Name",
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20),
               )
             ),
           )),
           Step(
               state: (initialIndex == 2)? StepState.editing:StepState.indexed,
               isActive: (initialIndex==2)?true : false,
               title: Text("Secound Name"), content:TextFormField(
             decoration: InputDecoration(
                 hintText: "Enter Secound Name",
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(20),
                 )
             ),
           )),
           Step(
               state: (initialIndex == 3)? StepState.editing:StepState.indexed,
               isActive: (initialIndex==3)?true : false,
               title: Text("Email"), content:TextFormField(
             keyboardType: TextInputType.emailAddress,
             decoration: InputDecoration(
                 hintText: "Enter Your Email",
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(20),
                 )
             ),
           )),
           Step(
               state: (initialIndex == 4)? StepState.editing:StepState.indexed,
               isActive: (initialIndex==4)?true : false,
               title: Text("Phone Number"), content:TextFormField(
             keyboardType: TextInputType.number,
             decoration: InputDecoration(
                 hintText: "Enter Phone Number",
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(20),
                 )
             ),
           )),
         ],
       ),
     ),
    );
  }
}

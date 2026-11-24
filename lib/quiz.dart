import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
   Quiz({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.purpleAccent],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ), //LinearGradient
          ), //BoxDecoration

          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/quiz-logo.png', width: 300,
                ),

                //Space between image and text
                const SizedBox(height: 20),

                const Text(
                  "Flutter Quiz App",
                style: TextStyle(
                  color: Colors.white, 
                  fontSize: 24, 
                  fontWeight: FontWeight.bold
                  ),
                  ),

                //Space between text and button
                const SizedBox(height: 20),

                //Outlined button with icon
                OutlinedButton.icon(
                onPressed: () {}, 
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  side: const BorderSide(
                    width: 2, 
                    color: Colors.white
                    ) //BorderSide
                ), //Set the border color and width

                //Label and icon for the button
                label: const Text(
                  "Start Quiz", 
                style: TextStyle(color: Colors.white, fontSize: 18),),
                icon: const Icon(Icons.arrow_right_alt),
                ), //Add icon to the button
                
              ],
            ), //Column
          ), //Center
        ), //Container
      ), //Scaffold
    ); //MaterialApp
  }
}
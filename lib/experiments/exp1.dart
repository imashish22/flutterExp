import 'package:flutter/material.dart';

class Experiment1 extends StatelessWidget{

  const Experiment1({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.red[500],

      child: const Center(
        
        child: Text(
          "Hello World",
          style: TextStyle(
            fontSize: 40,
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),

        ),
      ),
    );
  }
}
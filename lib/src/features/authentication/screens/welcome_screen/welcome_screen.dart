import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Admission Helpline"),centerTitle: true,),
        body: Center(child: Text("Welcome",style: Theme.of(context).textTheme.titleMedium,)),
      ),
    );
  }
}

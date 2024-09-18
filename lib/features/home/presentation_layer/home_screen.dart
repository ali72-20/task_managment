import 'package:flutter/material.dart';
import 'package:task_managment/features/home/presentation_layer/widgets/custom_app_bar.dart';
import 'package:task_managment/features/home/presentation_layer/widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white.withOpacity(.94),
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: CustomAppBar(),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blueAccent.withOpacity(.2),
                Colors.white.withOpacity(.2),
                Colors.yellow.withOpacity(.2)
              ]
            )
          ),
          child: const HomeBody(),
        ),
      ),
    );
  }
}

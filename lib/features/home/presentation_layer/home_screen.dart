import 'package:flutter/material.dart';
import 'package:task_managment/features/home/presentation_layer/widgets/custom_app_bar.dart';
import 'package:task_managment/features/home/presentation_layer/widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: CustomAppBar(),
        ),
        body: HomeBody(),
      ),
    );
  }
}

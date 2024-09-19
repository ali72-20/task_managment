import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:task_managment/core/utilites/colors.dart';
import 'package:task_managment/features/add_task/presentation_layer/add_task.dart';
import 'package:task_managment/features/home/presentation_layer/widgets/custom_app_bar.dart';
import 'package:task_managment/features/home/presentation_layer/widgets/home_body.dart';
import 'package:task_managment/features/profile/presentation_layer/profile.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});
  int currentFragmentIndex =  0;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> currentFragment = [
    const HomeBody(),
    const AddTask(),
    const Profile()
  ];
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
          child: currentFragment.elementAt(widget.currentFragmentIndex),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          height: 60,
          color: kPrimaryColor.withOpacity(.9),
          backgroundColor: Colors.white,
          items: const [
            Icon(Icons.home, color: Colors.white,),
            Icon(Icons.add, color: Colors.white,),
            Icon(Icons.account_box,color: Colors.white,)
          ],
          onTap: (index){
            setState(() {
              widget.currentFragmentIndex  = index;
            });
          },
          index: widget.currentFragmentIndex,
        ) ,
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:task_managment/core/utilites/Styles.dart';
import 'package:task_managment/features/home/presentation_layer/widgets/category_row.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        CategoryRow()
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:task_managment/features/home/presentation_layer/widgets/category_row_item.dart';

class CategoryRow extends StatefulWidget {
  CategoryRow({super.key});

  @override
  State<CategoryRow> createState() => _CategoryRowState();
}

class _CategoryRowState extends State<CategoryRow> {
  int currentIndex = 0;

  List<String> tapBar = [
    'All',
    'To Do',
    'In Progress',
    'Done',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * .1),
      child: SizedBox(
        height: 40,
        width: double.infinity,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: tapBar.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = index;
                });
              },
              child: CategoryRowItem(text: tapBar[index], opacity: currentIndex == index? .999:.6,),
            );
          },
        ),
      ),
    );
  }
}

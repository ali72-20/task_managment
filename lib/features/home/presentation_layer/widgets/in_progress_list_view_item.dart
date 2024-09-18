import 'package:flutter/material.dart';
import 'package:task_managment/core/utilites/Styles.dart';


class InProgressListViewItem extends StatelessWidget {
  const InProgressListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
      child: Container(
        height: 100,
        width: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.orange.withOpacity(.16)
        ),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('Task title'),
            const Text('Task description'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.timer,color: Colors.orangeAccent,),
                  Container(
                    height: 25,
                    decoration: BoxDecoration(
                        color: Colors.orange.withOpacity(.3),
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text('In Progress', style: Styles.style14.copyWith(color: Colors.orange),),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'in_progress_list_view_item.dart';

class InProgressListView extends StatelessWidget {
  const InProgressListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context,index){
            return const InProgressListViewItem();
          },

      ),
    );
  }
}

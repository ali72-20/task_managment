import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../../core/utilites/assets.dart';
import '../../../core/utilites/colors.dart';

class customLoadingIndicator extends StatelessWidget {
  const customLoadingIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      actions: [
        Image.asset(loadingImage),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: LoadingAnimationWidget.prograssiveDots(
              color: kPrimaryColor, size: 100,
            ),
          ),
        )
      ],
    );
  }
}
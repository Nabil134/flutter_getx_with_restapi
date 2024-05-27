

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_mvvm/res/colors/app_color.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({super.key,required this.title, this.loading=false,
    this.width=50,
    this.height=60,
    required this.onPress,
     this.textColor=AppColor.primaryTextColor,
     this.buttonColor=AppColor.primaryButtonColor,

  });
  final bool loading;
  final String title;
  final double height,width;
  final VoidCallback onPress;
  final Color textColor,buttonColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onPress,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
color: buttonColor,
          borderRadius: BorderRadius.circular(50),
        ),
      child: loading?CircularProgressIndicator():Center(child: Text(title,style:Theme.of(context).
    textTheme.titleMedium!.copyWith(color: Colors.white),),
      ),
    ),
    );
  }
}

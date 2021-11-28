import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    Key? key,
    this.child,
    this.onPressed,
    this.bgColor,
  }) : super(key: key);

  final Widget? child;
  final void Function()? onPressed;
  final Color? bgColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: bgColor ?? kSelectedCardColor,
        ),
        child: child,
      ),
    );
  }
}

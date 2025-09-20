import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../utils/constants.dart';

class AppButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final Color? borderColor;
  final Color color, textColor;
  final Size size;
  final bool loading;
  final EdgeInsetsGeometry margin;

  const AppButton({
    Key? key,
    required this.title,
    required this.onTap,
    this.borderColor,
    this.color = K.secondaryColor,
    this.size = const Size(double.infinity, 50),
    this.textColor = Colors.white,
    this.loading = false,
    this.margin = const EdgeInsets.all(5.0),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: BouncingWidget(
        onPressed: onTap,
        scaleFactor: 0.5,
        duration: const Duration(milliseconds: 200),
        child: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
            color: color,
            border: borderColor != null ? Border.all(color: borderColor!, width: 1) : null,
            borderRadius: BorderRadius.circular(10),
          ),
          alignment: Alignment.center,
          child: loading
              ? Padding(
                  padding: EdgeInsets.all(5.0),
                  child: LoadingAnimationWidget.fourRotatingDots(
                    color: Colors.white,
                    size: 30,
                  ),
                )
              : Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    color: textColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
        ),
      ),
    );
  }
}

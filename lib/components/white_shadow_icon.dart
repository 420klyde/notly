import 'package:flutter/material.dart';
import 'package:notly/utils/constants/colors.dart';

class WhiteShadowIcon extends StatelessWidget {
  const WhiteShadowIcon(
      {super.key, required this.icon, required this.onPressed});
  final Widget icon;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: const BoxDecoration(
        color: white,
        borderRadius: BorderRadius.all(Radius.circular(13)),
        //shadow
        boxShadow: [BoxShadow(blurRadius: 2, color: faintWhite)],
      ),
      child: InkWell(
        onTap: onPressed,
        child: icon,
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:azul_football/helpers/dimension.dart';

class RegularText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final TextOverflow overflow;
  final TextAlign alignment;
  final TextStyle style;
  RegularText({
    this.style,
    this.text,
    this.color = Colors.black,
    this.size = 20,
    this.overflow = TextOverflow.ellipsis,
    this.alignment = TextAlign.start,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: alignment,
      // overflow: TextOverflow.ellipsis,
      style: style,
    );
  }
}

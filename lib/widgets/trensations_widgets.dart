import 'package:flutter/material.dart';

class ShakeTransition extends StatelessWidget {
  final Widget child;
  final Duration duration;
  final double offset;
  final Axis axis;

  const ShakeTransition({
    Key key,
    this.duration = const Duration(milliseconds: 900),
    this.offset = 140.0,
    this.child,
    this.axis = Axis.horizontal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      child: child,
      duration: duration,
      curve: Curves.easeOutQuint,
      tween: Tween(begin: 1.0, end: 0.0),
      builder: (context, value, child) {
        return Transform.translate(
          offset: axis == Axis.horizontal
              ? Offset(value * offset, 0.0)
              : Offset(0.0, value * offset),
          child: child,
        );
      },
    );
  }
}

class ShakeListTransition extends StatelessWidget {
  final Widget child;
  final Duration duration;
  final double offset;
  final Axis axis;

  const ShakeListTransition({
    Key key,
    this.duration = const Duration(milliseconds: 900),
    this.offset = 140.0,
    this.child,
    this.axis = Axis.horizontal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      child: child,
      duration: duration,
      curve: Curves.ease,
      tween: Tween(begin: 1.0, end: 0.0),
      builder: (context, value, child) {
        return Transform.translate(
          offset: axis == Axis.horizontal
              ? Offset(value * offset, 0.0)
              : Offset(0.0, value * offset),
          child: child,
        );
      },
    );
  }
}

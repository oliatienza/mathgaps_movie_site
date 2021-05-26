import 'package:flutter/material.dart';

class MocsContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final Color color;
  final BoxDecoration decoration;
  const MocsContainer({
    Key key,
    @required this.child,
    this.padding = EdgeInsets.zero,
    this.decoration,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: decoration != null ? null : color,
      decoration: decoration,
      child: child,
    );
  }
}

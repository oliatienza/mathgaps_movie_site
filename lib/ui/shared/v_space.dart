import 'package:flutter/material.dart';

class VSpace extends StatelessWidget {
  final double size;

  const VSpace(this.size, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
    );
  }
}

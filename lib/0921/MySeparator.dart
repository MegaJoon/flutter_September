import 'package:flutter/material.dart';

// dotted line
class MySeparator extends StatelessWidget {
  final double height;
  final Color color;

  const MySeparator({this.height = 0.1, this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        final dashWidth = 5.0;
        final dashHeight = height * 0.5;
        final dashCount = (boxWidth / (1.4 * dashWidth)).floor();
        return Flex(
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight * 0.3,
              child: DecoratedBox(decoration: BoxDecoration(color: color)),
            );
          }),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
        );
      },
    );
  }
}

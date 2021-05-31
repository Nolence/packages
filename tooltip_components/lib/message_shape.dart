import 'package:flutter/material.dart';

class MessageShape extends ShapeBorder {
  final Offset target;

  final BorderRadiusGeometry borderRadius;

  final double tailHeight;

  final double tailBaseWidth;

  const MessageShape({
    required this.target,
    required this.borderRadius,
    required this.tailHeight,
    required this.tailBaseWidth,
  });

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.zero;

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    final radius = borderRadius.resolve(textDirection);

    return Path()
      ..addRRect(
        RRect.fromRectAndCorners(
          rect,
          topLeft: radius.topLeft,
          topRight: radius.topRight,
          bottomLeft: radius.bottomLeft,
          bottomRight: radius.bottomRight,
        ),
      );
  }

  /// Draws the tail of the tooltip
  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    final isBelow = rect.top > target.dy;
    final direction = isBelow ? 1.0 : -1.0;
    final distanceToTail = target.dx - (tailBaseWidth / 2);

    return Path()
      ..fillType = PathFillType.evenOdd
      ..addPath(getInnerPath(rect), Offset.zero)
      ..moveTo(distanceToTail, isBelow ? rect.top : rect.bottom)
      ..relativeLineTo(tailBaseWidth / 2, -tailHeight * direction)
      ..relativeLineTo(tailBaseWidth / 2, tailHeight * direction)
      ..close();
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {}

  @override
  ShapeBorder scale(double t) {
    return this;
  }
}

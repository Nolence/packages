import 'package:flutter/material.dart';

/// A delegate for computing the layout of a tooltip to be displayed above or
/// bellow a target specified in the global coordinate system.
class TooltipPositionDelegate extends SingleChildLayoutDelegate {
  /// The size of the child to be displayed. This is used to compute
  /// the offset of the tooltip
  final Size boxSize;

  /// The offset of the target the tooltip is positioned near in the global
  /// coordinate system.
  final Offset target;

  /// The amount of vertical distance between the target and the displayed
  /// tooltip.
  final double verticalOffset;

  /// The height of the tail or pointer. This is added to the vertical offset
  /// in order to find the position of the tooltip
  final double tailHeight;

  /// Whether the tooltip is displayed below its widget by default.
  ///
  /// If there is insufficient space to display the tooltip in the preferred
  /// direction, the tooltip will be displayed in the opposite direction.
  final bool preferBelow;

  /// Creates a delegate for computing the layout of a tooltip.
  ///
  /// The arguments must not be null.
  const TooltipPositionDelegate({
    required this.boxSize,
    required this.target,
    required this.verticalOffset,
    required this.tailHeight,
    required this.preferBelow,
  });

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) =>
      constraints.loosen();

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    return positionDependentBox(
      size: size,
      childSize: childSize,
      target: target,
      verticalOffset: verticalOffset + (boxSize.height / 2) + tailHeight,
      preferBelow: preferBelow,
    );
  }

  @override
  bool shouldRelayout(TooltipPositionDelegate oldDelegate) {
    return target != oldDelegate.target ||
        verticalOffset != oldDelegate.verticalOffset ||
        preferBelow != oldDelegate.preferBelow;
  }
}

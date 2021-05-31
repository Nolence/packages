import 'package:flutter/material.dart';
import 'package:tooltip_components/message_shape.dart';
import 'package:tooltip_components/tooltip_position_delegate.dart';

class TooltipOverlay extends StatelessWidget {
  final Widget child;

  final EdgeInsetsGeometry padding;

  final EdgeInsetsGeometry margin;

  final Animation<double> animation;

  final Size boxSize;

  final Offset target;

  final double verticalOffset;

  final bool preferBelow;

  final LayerLink link;

  final Offset offsetToTarget;

  final double elevation;

  final BorderRadiusGeometry borderRadius;

  final double tailBaseWidth;

  final double tailHeight;

  final Color color;

  const TooltipOverlay({
    Key? key,
    required this.child,
    required this.padding,
    required this.margin,
    required this.animation,
    required this.boxSize,
    required this.target,
    required this.verticalOffset,
    required this.preferBelow,
    required this.link,
    required this.offsetToTarget,
    required this.elevation,
    required this.borderRadius,
    required this.tailBaseWidth,
    required this.tailHeight,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: animation,
      child: CompositedTransformFollower(
        link: link,
        showWhenUnlinked: false,
        offset: offsetToTarget,
        child: CustomSingleChildLayout(
          delegate: TooltipPositionDelegate(
            boxSize: boxSize,
            target: target,
            verticalOffset: verticalOffset,
            tailHeight: tailHeight,
            preferBelow: preferBelow,
          ),
          child: Material(
            type: MaterialType.transparency,
            child: Container(
              padding: padding,
              margin: margin,
              decoration: ShapeDecoration(
                color: color,
                shadows: kElevationToShadow[elevation],
                shape: MessageShape(
                  target: target,
                  borderRadius: borderRadius,
                  tailBaseWidth: tailBaseWidth,
                  tailHeight: tailHeight,
                ),
              ),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}

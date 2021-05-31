import 'package:flutter/material.dart';

class DragNode extends StatelessWidget {
  const DragNode({
    Key? key,
    required this.child,
    required this.i,
    required this.j,
    required this.onAccept,
    required this.isEditable,
  }) : super(key: key);

  final Widget? child;

  final int i;

  final int j;

  final void Function(DragNode current, DragNode other) onAccept;

  final bool isEditable;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final placeholder = isEditable
        ? CircleAvatar(
            backgroundColor: theme.colorScheme.secondary,
            minRadius: 40,
            child: Center(
              child: Text(
                'Drag\nhere',
                textAlign: TextAlign.center,
                style: theme.textTheme.subtitle1!.copyWith(
                  color: theme.textTheme.bodyText1?.color,
                ),
              ),
            ),
          )
        : SizedBox();

    return DragTarget<DragNode>(
      key: key,
      onAccept: (node) => onAccept(this, node),
      builder: (context, _, __) {
        final childNode = child;

        if (childNode == null) {
          // Simple drag target
          return placeholder;
        } else if (i == -1 || j == -1) {
          // Keyless children
          return Draggable<DragNode>(
            feedback: childNode,
            childWhenDragging: Container(),
            data: this,
            child: childNode,
          );
        } else {
          if (isEditable) {
            return Draggable<DragNode>(
              feedback: childNode,
              childWhenDragging: placeholder,
              data: this,
              child: childNode,
            );
          }

          return childNode;
        }
      },
    );
  }
}

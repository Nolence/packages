import 'package:flutter/material.dart';

class ButtonGroup extends StatelessWidget {
  final IconData removeIcon;

  final IconData addIcon;

  final VoidCallback onAdd;

  final VoidCallback onRemove;

  const ButtonGroup({
    Key? key,
    required this.onAdd,
    required this.onRemove,
    required this.addIcon,
    required this.removeIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: IntrinsicWidth(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: onRemove,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 2.0,
                ),
                child: Icon(removeIcon),
              ),
            ),
            const Divider(height: 0),
            InkWell(
              onTap: onAdd,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 2.0,
                ),
                child: Icon(addIcon),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

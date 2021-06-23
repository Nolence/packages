import 'package:flutter/material.dart';
import 'package:treeco/button_group.dart';
import 'package:treeco/drag_node.dart';
import 'package:treeco/tree_header.dart';

class Tree extends StatefulWidget {
  final List<Widget> children;

  final List<List<String?>> layout;

  final VoidCallback onBackgroundTap;

  final VoidCallback onAddChild;

  final EdgeInsets padding;

  final EdgeInsets tilePadding;

  final EdgeInsets headerPadding;

  final double headerCrossAxisSpacing;

  final ValueChanged<List<List<String?>>> onUpdate;

  final IconData addIcon;

  final IconData removeIcon;

  final ScrollController? scrollController;

  final bool isEditable;

  final bool ignoreMissingChild;

  final double headerHeight;

  final double editPadding;

  const Tree({
    Key? key,
    required this.children,
    required this.onBackgroundTap,
    required this.onAddChild,
    required this.onUpdate,
    required this.headerPadding,
    required this.headerCrossAxisSpacing,
    required this.addIcon,
    required this.removeIcon,
    required this.scrollController,
    this.layout = const [
      [null, null]
    ],
    this.padding = const EdgeInsets.all(12.0),
    this.tilePadding = const EdgeInsets.symmetric(vertical: 6.0),
    this.isEditable = true,
    this.ignoreMissingChild = false,
    this.headerHeight = 80.0,
    this.editPadding = 26.0,
  }) : super(key: key);

  @override
  _TreeState createState() => _TreeState();
}

class _TreeState extends State<Tree> {
  late List<List<String?>> _layout;
  late List<List<Widget>> _nodes;
  late List<Widget> _keylessNodes;

  static const maxItems = 4;

  @override
  void initState() {
    _getNodes();
    super.initState();
  }

  @override
  void didUpdateWidget(Tree oldWidget) {
    if (widget.layout != oldWidget.layout ||
        widget.children != oldWidget.children) _getNodes();
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    final children = _nodes
        .asMap()
        .map(
          (int rowIndex, nodeRow) {
            return MapEntry(
              rowIndex,
              Padding(
                key: Key('$rowIndex,${nodeRow.length}'),
                padding: widget.tilePadding,
                child: IntrinsicHeight(
                  child: Stack(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: nodeRow.toList(),
                      ),
                      if (widget.isEditable) ...[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: ButtonGroup(
                            onAdd: () => _onAdd(rowIndex, false),
                            onRemove: () => _onRemove(rowIndex, false),
                            addIcon: widget.addIcon,
                            removeIcon: widget.removeIcon,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: ButtonGroup(
                            onAdd: () => _onAdd(rowIndex),
                            onRemove: () => _onRemove(rowIndex),
                            addIcon: widget.addIcon,
                            removeIcon: widget.removeIcon,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            );
          },
        )
        .values
        .toList();

    if (widget.isEditable) {
      return Stack(
        fit: StackFit.passthrough,
        children: <Widget>[
          GestureDetector(
            onTap: widget.onBackgroundTap,
            // TODO: Await https://github.com/flutter/flutter/issues/41334
            child: ListView(
              controller: widget.scrollController,
              cacheExtent: 600.0,
              shrinkWrap: true,
              padding: widget.padding.copyWith(
                top: widget.headerHeight +
                    widget.padding.top +
                    widget.tilePadding.top,
                bottom: widget.padding.bottom + 32.0,
              ),
              children: children,
            ),
            // child: ReorderableListView(
            //   padding: widget.padding,
            //   header: TreeHeader(
            //     keylessChildren: _keylessNodes,
            //     onAdd: widget.onAddChild,
            //     onAccept: (other) {
            //       setState(() => _layout[other.i][other.j] = null);
            //       widget.onUpdate?.call(_layout);
            //     },
            //   ),
            //   onReorder: (int oldIndex, int newIndex) {
            //     if (newIndex > oldIndex) newIndex -= 1;

            //     final item = _layout.removeAt(oldIndex);
            //     setState(() => _layout.insert(newIndex, item));
            //     widget.onUpdate?.call(_layout);
            //   },
            //   children: children,
            // ),
          ),
          Container(
            padding: widget.padding,
            alignment: Alignment.topCenter,
            child: TreeHeader(
              crossAxisSpacing: widget.headerCrossAxisSpacing,
              padding: widget.headerPadding,
              addIcon: widget.addIcon,
              height: widget.headerHeight,
              keylessChildren: _keylessNodes,
              onAdd: widget.onAddChild,
              onAccept: (other) {
                if (other.i == -1 && other.j == -1) {
                  return;
                }

                setState(() => _layout[other.i][other.j] = null);
                widget.onUpdate(_layout);
              },
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(bottom: widget.padding.bottom),
            child: Card(
              child: IntrinsicHeight(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        setState(() => _layout.removeLast());
                        widget.onUpdate(_layout);
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 2.0,
                          horizontal: 8.0,
                        ),
                        child: Icon(widget.removeIcon),
                      ),
                    ),
                    const VerticalDivider(width: 0),
                    InkWell(
                      onTap: () {
                        setState(() => _layout.add([null]));
                        widget.onUpdate(_layout);
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 2.0,
                          horizontal: 8.0,
                        ),
                        child: Icon(widget.addIcon),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
    } else {
      return GestureDetector(
        onTap: widget.onBackgroundTap,
        child: ListView(
          controller: widget.scrollController,
          padding: widget.padding,
          shrinkWrap: true,
          children: children,
        ),
      );
    }
  }

  void _onAdd(int rowIndex, [bool end = true]) {
    if (_layout[rowIndex].length > maxItems - 1) {
      return;
    }
    if (end) {
      _layout[rowIndex].add(null);
    } else {
      _layout[rowIndex].insert(0, null);
    }

    setState(() {});
    widget.onUpdate(_layout);
  }

  void _onRemove(int rowIndex, [bool end = true]) {
    if (_layout[rowIndex].length <= 1) {
      _layout.removeAt(rowIndex);
      setState(() {});
      widget.onUpdate(_layout);
    } else {
      if (end) {
        _layout[rowIndex].removeLast();
      } else {
        _layout[rowIndex].removeAt(0);
      }

      setState(() {});
      widget.onUpdate(_layout);
    }
  }

  void _getNodes() {
    assert(widget.children.every((child) => child.key != null));

    _layout = widget.layout;

    final dragNodes = _getDragNodes(_layout);

    setState(() {
      _nodes = dragNodes.nodes;
      _keylessNodes = dragNodes.keylessNodes;
    });
  }

  _DragNodes _getDragNodes(List<List<String?>> layout) {
    final _nodes = <List<DragNode>>[];
    final _childrenCopy = [...widget.children];

    for (var i = 0; i < layout.length; i++) {
      _nodes.add([]);
      for (var j = 0; j < layout[i].length; j++) {
        // Placeholder
        if (layout[i][j] == null) {
          _nodes[i].insert(
            j,
            DragNode(
              key: null,
              child: null,
              i: i,
              j: j,
              onAccept: _swap,
              isEditable: widget.isEditable,
            ),
          );
          continue;
        }

        final childIndex = _childrenCopy.indexWhere((child) {
          return (child.key as ValueKey).value == layout[i][j];
        });

        if (childIndex != -1) {
          final key = ValueKey(layout[i][j]);
          _nodes[i].insert(
            j,
            DragNode(
              key: key,
              i: i,
              j: j,
              onAccept: _swap,
              isEditable: widget.isEditable,
              child: _childrenCopy[childIndex],
            ),
          );
          _childrenCopy.removeAt(childIndex);
        } else {
          if (widget.ignoreMissingChild) {
            continue;
          } else {
            debugPrint('No matching course found for key "${layout[i][j]}"');
          }
        }
      }
    }

    final _keylessChildren = _childrenCopy.map<DragNode>((child) {
      return DragNode(
        i: -1,
        j: -1,
        key: ValueKey(child.key),
        onAccept: _swap,
        isEditable: widget.isEditable,
        child: child,
      );
    }).toList();

    return _DragNodes(_keylessChildren, _nodes);
  }

  void onAccept(DragNode current, DragNode other) {
    if (other.key != null) {
      setState(() {
        _layout[current.i][current.j] = other.key.toString();
      });
      widget.onUpdate(_layout);
    } else {
      _swap(current, other);
    }
  }

  void _swap(DragNode node, DragNode other) {
    if (node.i == -1 && node.j == -1) {
      return;
    }

    // TODO: possibly a smarter way to add these two if cases together
    if (node.i == -1 || node.j == -1) {
      // I have no clue why this is this picky
      final key = ((node.key as ValueKey<Key>).value as ValueKey<String>);

      setState(() {
        _layout[other.i][other.j] = key.value;
      });
    } else if (other.i == -1 || other.j == -1) {
      final key = ((other.key as ValueKey<Key>).value as ValueKey<String>);

      setState(() {
        _layout[node.i][node.j] = key.value;
      });
    } else {
      final temp = _layout[node.i][node.j];

      setState(() {
        _layout[node.i][node.j] = _layout[other.i][other.j];
        _layout[other.i][other.j] = temp;
      });
    }

    widget.onUpdate(_layout);
  }
}

class _DragNodes {
  const _DragNodes(this.keylessNodes, this.nodes);

  final List<Widget> keylessNodes;
  final List<List<Widget>> nodes;
}

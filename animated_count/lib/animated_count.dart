library animated_count;

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

///
/// This [Widget] will animate through the range between [count] and a new [count]
/// once setState is called in the parent's scope.
///
class AnimatedCount extends ImplicitlyAnimatedWidget {
  /// The number to animate
  final num count;

  /// The style of the count
  final TextStyle? style;

  /// The style of the count
  final TextAlign? textAlign;

  /// This group is helpful if you'd like to keep other [AutoSizeText] a similar size,
  /// alignment and proportion
  final AutoSizeGroup? group;

  /// Text inserted before [count]
  final TextSpan? prepend;

  /// Text inserted after [count]
  final TextSpan? append;

  AnimatedCount({
    Key? key,
    required this.count,
    Duration duration = const Duration(milliseconds: 250),
    this.style,
    this.textAlign,
    this.group,
    this.prepend,
    this.append,
    Curve curve = Curves.linear,
  }) : super(duration: duration, curve: curve, key: key);

  @override
  ImplicitlyAnimatedWidgetState<ImplicitlyAnimatedWidget> createState() {
    return _AnimatedCountState();
  }
}

class _AnimatedCountState extends AnimatedWidgetBaseState<AnimatedCount> {
  Tween<int>? _intCount;
  Tween<double>? _doubleCount;

  @override
  Widget build(BuildContext context) {
    final prepend = widget.prepend;
    final append = widget.append;

    if (widget.count is int) {
      return AutoSizeText.rich(
        TextSpan(
          children: [
            if (prepend != null) prepend,
            TextSpan(
              text: _intCount?.evaluate(animation).toString(),
            ),
            if (append != null) append,
          ],
        ),
        style: widget.style,
        maxLines: 1,
        textAlign: widget.textAlign,
        group: widget.group,
      );
    } else {
      return AutoSizeText.rich(
        TextSpan(
          children: [
            if (prepend != null) prepend,
            TextSpan(
              text: _doubleCount?.evaluate(animation).toStringAsFixed(1),
            ),
            if (append != null) append,
          ],
        ),
        style: widget.style,
        maxLines: 1,
        textAlign: widget.textAlign,
        group: widget.group,
      );
    }
  }

  @override
  void forEachTween(TweenVisitor<dynamic> visitor) {
    if (widget.count is int) {
      _intCount = visitor(
        _intCount,
        widget.count.toInt(),
        (dynamic value) => Tween<int>(begin: value as int?),
      ) as Tween<int>;
    } else {
      _doubleCount = visitor(
        _doubleCount,
        widget.count.toDouble(),
        (dynamic value) => Tween<double>(begin: value as double?),
      ) as Tween<double>?;
    }
  }
}

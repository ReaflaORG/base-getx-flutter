import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// 글로벌 ElevatedButton 위젯
class RElevatedButton extends StatelessWidget {
  final MaterialStatesController? statesController;
  final FocusNode? focusNode;
  final bool autofocus;
  final Clip? clipBehavior;
  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final ValueChanged<bool>? onHover;
  final ValueChanged<bool>? onFocusChange;
  final ButtonStyle? style;
  final bool isLoader;
  final Widget child;

  const RElevatedButton({
    super.key,
    this.statesController,
    this.focusNode,
    this.autofocus = false,
    this.clipBehavior,
    this.onPressed,
    this.onLongPress,
    this.onHover,
    this.onFocusChange,
    this.style,
    this.isLoader = false,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      key: key,
      style: style,
      focusNode: focusNode,
      autofocus: autofocus,
      clipBehavior: clipBehavior ?? Clip.none,
      onPressed: isLoader ? null : onPressed,
      onLongPress: isLoader ? null : onLongPress,
      onHover: isLoader ? null : onHover,
      onFocusChange: onFocusChange,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        child: isLoader
            ? SizedBox(
                width: 20.w,
                height: 20.w,
                child: CircularProgressIndicator(
                  strokeWidth: 3.0.w,
                ),
              )
            : child,
      ),
    );
  }
}

import 'package:emerge_alert_dialog/model/emerge_alert_dialog_options.dart';
import 'package:flutter/material.dart';

class EmergeAlertDialog extends StatefulWidget {
  const EmergeAlertDialog({
    Key? key,
    this.filterQuality,
    this.emergeAlertDialogOptions = const EmergeAlertDialogOptions(),
    this.alignment = Alignment.bottomCenter,
    this.animationDuration = 220,
  }) : super(key: key);

  final FilterQuality? filterQuality;
  final Alignment alignment;

  ///The length of time this animation should last.
  ///in [milliseconds]
  final int animationDuration;

  ///alert dialog options.
  ///
  /// The [titlePadding] and [contentPadding] default to null, which implies a
  /// default that depends on the values of the other properties.
  final EmergeAlertDialogOptions emergeAlertDialogOptions;

  @override
  _EmergeAlertDialogState createState() => _EmergeAlertDialogState();
}

class _EmergeAlertDialogState extends State<EmergeAlertDialog>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    _initScaleAnimation();
  }

  _initScaleAnimation() {
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: widget.animationDuration),
    )..addListener(() => setState(() {}));
    animation = Tween<double>(begin: 0, end: 1.0).animate(controller);
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    final _value = widget.emergeAlertDialogOptions;
    return ScaleTransition(
      scale: animation,
      filterQuality: widget.filterQuality,
      alignment: widget.alignment,
      key: widget.key,
      child: AlertDialog(
        actions: _value.actions,
        actionsAlignment: _value.actionsAlignment,
        actionsOverflowAlignment: _value.actionsOverflowAlignment,
        actionsOverflowButtonSpacing: _value.actionsOverflowButtonSpacing,
        actionsOverflowDirection: _value.actionsOverflowDirection,
        actionsPadding: _value.actionsPadding,
        alignment: _value.alignment,
        backgroundColor: _value.backgroundColor,
        buttonPadding: _value.actionsPadding,
        clipBehavior: _value.clipBehavior,
        content: _value.content,
        contentPadding: _value.actionsPadding,
        contentTextStyle: _value.contentTextStyle,
        elevation: _value.elevation,
        icon: _value.icon,
        iconColor: _value.iconColor,
        iconPadding: _value.iconPadding,
        insetPadding: _value.insetPadding,
        key: widget.key,
        scrollable: _value.scrollable,
        semanticLabel: _value.semanticLabel,
        shape: _value.shape,
        title: _value.title,
        titlePadding: _value.titlePadding,
        titleTextStyle: _value.titleTextStyle,
      ),
    );
  }
}

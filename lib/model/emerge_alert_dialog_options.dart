import 'package:flutter/material.dart';

const EdgeInsets _defaultInsetPadding =
    EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0);

class EmergeAlertDialogOptions {
  const EmergeAlertDialogOptions({
    this.icon,
    this.iconPadding,
    this.iconColor,
    this.title,
    this.titlePadding,
    this.titleTextStyle,
    this.content,
    this.contentPadding,
    this.contentTextStyle,
    this.actions,
    this.actionsPadding,
    this.actionsAlignment,
    this.actionsOverflowAlignment,
    this.actionsOverflowDirection,
    this.actionsOverflowButtonSpacing,
    this.buttonPadding,
    this.backgroundColor,
    this.elevation,
    this.semanticLabel,
    this.insetPadding = _defaultInsetPadding,
    this.clipBehavior = Clip.none,
    this.shape,
    this.alignment,
    this.scrollable = false,
  });

  /// An optional icon to display at the top of the dialog.
  final Widget? icon;

  /// Color for the [Icon] in the [icon] of this [AlertDialog].
  final Color? iconColor;

  /// Padding around the [icon].
  ///
  /// If there is no [icon], no padding will be provided. Otherwise, this
  /// padding is used.
  final EdgeInsetsGeometry? iconPadding;

  /// The (optional) title of the dialog is displayed in a large font at the top
  /// of the dialog, below the (optional) [icon].
  final Widget? title;

  /// Padding around the title.
  ///
  /// If there is no title, no padding will be provided. Otherwise, this padding
  /// is used.
  final EdgeInsetsGeometry? titlePadding;

  /// Style for the text in the [title] of this [AlertDialog].
  final TextStyle? titleTextStyle;

  /// The (optional) content of the dialog is displayed in the center of the
  /// dialog in a lighter font.
  final Widget? content;

  /// Padding around the content.
  ///
  /// If there is no [content], no padding will be provided. Otherwise, this
  /// padding is used.
  final EdgeInsetsGeometry? contentPadding;

  /// Style for the text in the [content] of this [AlertDialog].
  final TextStyle? contentTextStyle;

  /// The (optional) set of actions that are displayed at the bottom of the
  /// dialog with an [OverflowBar].
  final List<Widget>? actions;

  /// Padding around the set of [actions] at the bottom of the dialog.
  final EdgeInsetsGeometry? actionsPadding;

  /// Defines the horizontal layout of the [actions] according to the same
  /// rules as for [Row.mainAxisAlignment].
  ///
  /// If this parameter is null (the default) then [MainAxisAlignment.end]
  /// is used.
  final MainAxisAlignment? actionsAlignment;

  /// The horizontal alignment of [actions] within the vertical
  /// "overflow" layout.
  final OverflowBarAlignment? actionsOverflowAlignment;

  /// The vertical direction of [actions] if the children overflow
  /// horizontally.
  final VerticalDirection? actionsOverflowDirection;

  /// The spacing between [actions] when the [OverflowBar] switches
  /// to a column layout because the actions don't fit horizontally.
  final double? actionsOverflowButtonSpacing;

  /// The padding that surrounds each button in [actions].
  final EdgeInsetsGeometry? buttonPadding;

  /// {@macro flutter.material.dialog.backgroundColor}
  final Color? backgroundColor;

  /// {@macro flutter.material.dialog.elevation}
  /// {@macro flutter.material.material.elevation}
  final double? elevation;

  /// The semantic label of the dialog used by accessibility frameworks to
  /// announce screen transitions when the dialog is opened and closed.
  final String? semanticLabel;

  /// {@macro flutter.material.dialog.insetPadding}
  final EdgeInsets insetPadding;

  /// {@macro flutter.material.dialog.clipBehavior}
  final Clip clipBehavior;

  /// {@macro flutter.material.dialog.shape}
  final ShapeBorder? shape;

  /// {@macro flutter.material.dialog.alignment}
  final AlignmentGeometry? alignment;

  /// Determines whether the [title] and [content] widgets are wrapped in a
  /// scrollable.
  final bool scrollable;
}

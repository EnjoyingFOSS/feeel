// Copyright Miroslav Mazel et al.
//
// This file is part of Feeel.
//
// Feeel is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// As an additional permission under section 7, you are allowed to distribute
// the software through an app store, even if that store has restrictive terms
// and conditions that are incompatible with the AGPL, provided that the source
// is also available under the AGPL with or without this permission through a
// channel without those restrictive terms and conditions.
//
// As a limitation under section 7, all unofficial builds and forks of the app
// must be clearly labeled as unofficial in the app's name (e.g. "Feeel
// UNOFFICIAL", never just "Feeel") or use a different name altogether.
// If any code changes are made, the fork should use a completely different name
// and app icon. All unofficial builds and forks MUST use a different
// application ID, in order to not conflict with a potential official release.
//
// Feeel is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with Feeel.  If not, see <http://www.gnu.org/licenses/>.
//
// This file is derived from work covered by the following license notice:
//
//    Copyright 2014 The Flutter Authors. All rights reserved.
//
//    Redistribution and use in source and binary forms, with or without modification,
//    are permitted provided that the following conditions are met:
//
//        * Redistributions of source code must retain the above copyright
//          notice, this list of conditions and the following disclaimer.
//        * Redistributions in binary form must reproduce the above
//          copyright notice, this list of conditions and the following
//          disclaimer in the documentation and/or other materials provided
//          with the distribution.
//        * Neither the name of Google Inc. nor the names of its
//          contributors may be used to endorse or promote products derived
//          from this software without specific prior written permission.
//
//    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
//    ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
//    WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//    DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
//    ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
//    (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
//    LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
//    ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
//    (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
//    SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

import 'package:feeel/theming/feeel_grid.dart';
import 'package:flutter/material.dart';

/// Material Design Navigation Pills component.

class NavigationPills extends StatelessWidget {
  final double effectiveHeight;

  /// Creates a Material Design Navigation Pills component.
  const NavigationPills({
    super.key,
    required this.children,
    required this.effectiveHeight,
    this.backgroundColor,
    this.shadowColor,
    this.surfaceTintColor,
    this.elevation,
    this.onDestinationSelected,
    this.selectedIndex = 0,
  });

  /// The background color of the [Material] that holds the [NavigationPills]'s
  /// contents.
  ///
  /// If this is null, then [NavigationDrawerThemeData.backgroundColor] is used.
  /// If that is also null, then it falls back to [ColorScheme.surface].
  final Color? backgroundColor;

  /// The color used for the drop shadow to indicate elevation.
  ///
  /// If null, [NavigationDrawerThemeData.shadowColor] is used. If that
  /// is also null, the default value is [Colors.transparent] which
  /// indicates that no drop shadow will be displayed.
  ///
  /// See [Material.shadowColor] for more details on drop shadows.
  final Color? shadowColor;

  ///  The surface tint of the [Material] that holds the [NavigationPills]'s
  /// contents.
  ///
  /// If this is null, then [NavigationDrawerThemeData.surfaceTintColor] is used.
  /// If that is also null, then it falls back to [Material.surfaceTintColor]'s default.
  final Color? surfaceTintColor;

  /// The elevation of the [NavigationPills] itself.
  ///
  /// If null, [NavigationDrawerThemeData.elevation] is used. If that
  /// is also null, it will be 1.0.
  final double? elevation;

  /// Defines the appearance of the items within the navigation drawer.
  ///
  /// The list contains [NavigationPill] widgets and/or customized
  /// widgets like headlines and dividers.
  final List<Widget> children;

  /// The index into destinations for the current selected
  /// [NavigationPill] or null if no destination is selected.
  ///
  /// A valid [selectedIndex] satisfies 0 <= [selectedIndex] < number of [NavigationPill].
  /// For an invalid [selectedIndex] like `-1`, all desitinations will appear unselected.
  final int? selectedIndex;

  /// Called when one of the [NavigationPill] children is selected.
  ///
  /// This callback usually updates the int passed to [selectedIndex].
  ///
  /// Upon updating [selectedIndex], the [NavigationPills] will be rebuilt.
  final ValueChanged<int>? onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    final int totalNumberOfDestinations =
        children.whereType<NavigationPill>().toList().length;

    Widget wrapChild(Widget child, int index) => _SelectableAnimatedBuilder(
        duration: const Duration(milliseconds: 500),
        isSelected: index == selectedIndex,
        builder: (BuildContext context, Animation<double> animation) {
          return _NavigationPillInfo(
            index: index,
            totalNumberOfDestinations: totalNumberOfDestinations,
            selectedAnimation: animation,
            onTap: () {
              if (onDestinationSelected != null) {
                onDestinationSelected!(index);
              }
            },
            child: child,
          );
        });

    return Material(
      color: backgroundColor,
      elevation: elevation!,
      shadowColor: shadowColor,
      surfaceTintColor: surfaceTintColor,
      child: SafeArea(
        child: SizedBox(
            height: effectiveHeight,
            child: Center(
              child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: LayoutXL.cols12.width),
                  child: Row(
                    children: <Widget>[
                      for (int i = 0; i < children.length; i++)
                        Expanded(
                          child: wrapChild(children[i], i),
                        ),
                    ],
                  )),
            )),
      ),
    );
  }
}

/// A Material Design [NavigationPills] destination.
///
/// Displays an icon with a label, for use in [NavigationPills.children].
class NavigationPill extends StatelessWidget {
  /// Creates a navigation drawer destination.
  const NavigationPill({
    super.key,
    this.backgroundColor,
    required this.icon,
    this.selectedIcon,
    required this.label,
  });

  /// Sets the color of the [Material] that holds all of the [Drawer]'s
  /// contents.
  ///
  /// If this is null, then [DrawerThemeData.backgroundColor] is used. If that
  /// is also null, then it falls back to [Material]'s default.
  final Color? backgroundColor;

  /// The [Widget] (usually an [Icon]) that's displayed for this
  /// [NavigationDestination].
  ///
  /// The icon will use [NavigationDrawerThemeData.iconTheme]. If this is
  /// null, the default [IconThemeData] would use a size of 24.0 and
  /// [ColorScheme.onSurfaceVariant].
  final Widget icon;

  /// The optional [Widget] (usually an [Icon]) that's displayed when this
  /// [NavigationDestination] is selected.
  ///
  /// If [selectedIcon] is non-null, the destination will fade from
  /// [icon] to [selectedIcon] when this destination goes from unselected to
  /// selected.
  ///
  /// The icon will use [NavigationDrawerThemeData.iconTheme] with
  /// [WidgetState.selected]. If this is null, the default [IconThemeData]
  /// would use a size of 24.0 and [ColorScheme.onSurfaceVariant].
  final Widget? selectedIcon;

  /// The text label that appears on the right of the icon
  ///
  /// The accompanying [Text] widget will use
  /// [NavigationDrawerThemeData.labelTextStyle]. If this are null, the default
  /// text style would use [TextTheme.labelLarge] with [ColorScheme.onSurfaceVariant].
  final Widget label;

  @override
  Widget build(BuildContext context) {
    const Set<WidgetState> selectedState = <WidgetState>{WidgetState.selected};
    const Set<WidgetState> unselectedState = <WidgetState>{};

    final NavigationDrawerThemeData navigationDrawerTheme =
        NavigationDrawerTheme.of(context);
    final NavigationDrawerThemeData defaults =
        _NavigationDrawerDefaultsM3(context);

    final Animation<double> animation =
        _NavigationPillInfo.of(context).selectedAnimation;

    return _NavigationPillBuilder(
      buildIcon: (BuildContext context) {
        final Widget selectedIconWidget = IconTheme.merge(
          data: navigationDrawerTheme.iconTheme?.resolve(selectedState) ??
              defaults.iconTheme!.resolve(selectedState)!,
          child: selectedIcon ?? icon,
        );
        final Widget unselectedIconWidget = IconTheme.merge(
          data: navigationDrawerTheme.iconTheme?.resolve(unselectedState) ??
              defaults.iconTheme!.resolve(unselectedState)!,
          child: icon,
        );

        return _isForwardOrCompleted(animation)
            ? selectedIconWidget
            : unselectedIconWidget;
      },
      buildLabel: (BuildContext context) {
        final TextStyle? effectiveSelectedLabelTextStyle =
            navigationDrawerTheme.labelTextStyle?.resolve(selectedState) ??
                defaults.labelTextStyle!.resolve(selectedState);
        final TextStyle? effectiveUnselectedLabelTextStyle =
            navigationDrawerTheme.labelTextStyle?.resolve(unselectedState) ??
                defaults.labelTextStyle!.resolve(unselectedState);
        return DefaultTextStyle(
          style: _isForwardOrCompleted(animation)
              ? effectiveSelectedLabelTextStyle!
              : effectiveUnselectedLabelTextStyle!,
          child: label,
        );
      },
    );
  }
}

/// Widget that handles the semantics and layout of a navigation drawer
/// destination.
///
/// Prefer [NavigationDestination] over this widget, as it is a simpler
/// (although less customizable) way to get navigation drawer destinations.
///
/// The icon and label of this destination are built with [buildIcon] and
/// [buildLabel]. They should build the unselected and selected icon and label
/// according to [_NavigationPillInfo.selectedAnimation], where an
/// animation value of 0 is unselected and 1 is selected.
///
/// See [NavigationDestination] for an example.
class _NavigationPillBuilder extends StatelessWidget {
  /// Builds a destination (icon + label) to use in a Material 3 [NavigationPills].
  const _NavigationPillBuilder({
    required this.buildIcon,
    required this.buildLabel,
  });

  /// Builds the icon for a destination in a [NavigationPills].
  ///
  /// To animate between unselected and selected, build the icon based on
  /// [_NavigationPillInfo.selectedAnimation]. When the animation is 0,
  /// the destination is unselected, when the animation is 1, the destination is
  /// selected.
  ///
  /// The destination is considered selected as soon as the animation is
  /// increasing or completed, and it is considered unselected as soon as the
  /// animation is decreasing or dismissed.
  final WidgetBuilder buildIcon;

  /// Builds the label for a destination in a [NavigationPills].
  ///
  /// To animate between unselected and selected, build the icon based on
  /// [_NavigationPillInfo.selectedAnimation]. When the animation is
  /// 0, the destination is unselected, when the animation is 1, the destination
  /// is selected.
  ///
  /// The destination is considered selected as soon as the animation is
  /// increasing or completed, and it is considered unselected as soon as the
  /// animation is decreasing or dismissed.
  final WidgetBuilder buildLabel;

  @override
  Widget build(BuildContext context) {
    final _NavigationPillInfo info = _NavigationPillInfo.of(context);
    final NavigationDrawerThemeData navigationDrawerTheme =
        NavigationDrawerTheme.of(context);
    final NavigationDrawerThemeData defaults =
        _NavigationDrawerDefaultsM3(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: _NavigationDestinationSemantics(
        child: SizedBox(
          height: navigationDrawerTheme.tileHeight ?? defaults.tileHeight,
          child: InkWell(
            highlightColor: Colors.transparent,
            onTap: info.onTap,
            borderRadius: const BorderRadius.all(Radius.circular(28.0)),
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                NavigationIndicator(
                  animation: _NavigationPillInfo.of(context).selectedAnimation,
                  color: navigationDrawerTheme.indicatorColor ??
                      defaults.indicatorColor!,
                  shape: navigationDrawerTheme.indicatorShape ??
                      defaults.indicatorShape!,
                  width: double.maxFinite,
                  // width: (navigationDrawerTheme.indicatorSize ??
                  //         defaults.indicatorSize!)
                  //     .width,
                  height: (navigationDrawerTheme.indicatorSize ??
                          defaults.indicatorSize!)
                      .height,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(width: 16),
                    buildIcon(context),
                    const SizedBox(width: 12),
                    buildLabel(context),
                    const SizedBox(width: 20)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// Semantics widget for a navigation drawer destination.
///
/// Requires a [_NavigationPillInfo] parent (normally provided by the
/// [NavigationPills] by default).
///
/// Provides localized semantic labels to the destination, for example, it will
/// read "Home, Tab 1 of 3".
///
/// Used by [_NavigationPillBuilder].
class _NavigationDestinationSemantics extends StatelessWidget {
  /// Adds the appropriate semantics for navigation drawer destinations to the
  /// [child].
  const _NavigationDestinationSemantics({
    required this.child,
  });

  /// The widget that should receive the destination semantics.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final MaterialLocalizations localizations =
        MaterialLocalizations.of(context);
    final _NavigationPillInfo destinationInfo = _NavigationPillInfo.of(context);
    // The AnimationStatusBuilder will make sure that the semantics update to
    // "selected" when the animation status changes.
    return _StatusTransitionWidgetBuilder(
      animation: destinationInfo.selectedAnimation,
      builder: (BuildContext context, Widget? child) {
        return Semantics(
          selected: _isForwardOrCompleted(destinationInfo.selectedAnimation),
          container: true,
          child: child,
        );
      },
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          child,
          Semantics(
            label: localizations.tabLabel(
              tabIndex: destinationInfo.index + 1,
              tabCount: destinationInfo.totalNumberOfDestinations,
            ),
          ),
        ],
      ),
    );
  }
}

/// Widget that listens to an animation, and rebuilds when the animation changes
/// [AnimationStatus].
///
/// This can be more efficient than just using an [AnimatedBuilder] when you
/// only need to rebuild when the [Animation.status] changes, since
/// [AnimatedBuilder] rebuilds every time the animation ticks.
class _StatusTransitionWidgetBuilder extends StatusTransitionWidget {
  /// Creates a widget that rebuilds when the given animation changes status.
  const _StatusTransitionWidgetBuilder({
    required super.animation,
    required this.builder,
    this.child,
  });

  /// Called every time the [animation] changes [AnimationStatus].
  final TransitionBuilder builder;

  /// The child widget to pass to the [builder].
  ///
  /// If a [builder] callback's return value contains a subtree that does not
  /// depend on the animation, it's more efficient to build that subtree once
  /// instead of rebuilding it on every animation status change.
  ///
  /// Using this pre-built child is entirely optional, but can improve
  /// performance in some cases and is therefore a good practice.
  ///
  /// See: [AnimatedBuilder.child]
  final Widget? child;

  @override
  Widget build(BuildContext context) => builder(context, child);
}

/// Inherited widget for passing data from the [NavigationPills] to the
/// [NavigationPills.destinations] children widgets.
///
/// Useful for building navigation destinations using:
/// `_NavigationPillInfo.of(context)`.
class _NavigationPillInfo extends InheritedWidget {
  /// Adds the information needed to build a navigation destination to the
  /// [child] and descendants.
  const _NavigationPillInfo({
    required this.index,
    required this.totalNumberOfDestinations,
    required this.selectedAnimation,
    required this.onTap,
    required super.child,
  });

  /// Which destination index is this in the navigation drawer.
  ///
  /// For example:
  ///
  /// ```dart
  /// const NavigationDrawer(
  ///   children: <Widget>[
  ///     Text('Headline'), // This doesn't have index.
  ///     NavigationPill(
  ///       // This is destination index 0.
  ///       icon: Icon(Icons.surfing),
  ///       label: Text('Surfing'),
  ///     ),
  ///     NavigationPill(
  ///       // This is destination index 1.
  ///       icon: Icon(Icons.support),
  ///       label: Text('Support'),
  ///     ),
  ///     NavigationPill(
  ///       // This is destination index 2.
  ///       icon: Icon(Icons.local_hospital),
  ///       label: Text('Hospital'),
  ///     ),
  ///   ]
  /// )
  /// ```
  ///
  /// This is required for semantics, so that each destination can have a label
  /// "Tab 1 of 3", for example.
  final int index;

  /// How many total destinations are are in this navigation drawer.
  ///
  /// This is required for semantics, so that each destination can have a label
  /// "Tab 1 of 4", for example.
  final int totalNumberOfDestinations;

  /// Indicates whether or not this destination is selected, from 0 (unselected)
  /// to 1 (selected).
  final Animation<double> selectedAnimation;

  /// The callback that should be called when this destination is tapped.
  ///
  /// This is computed by calling [NavigationPills.onDestinationSelected]
  /// with [index] passed in.
  final VoidCallback onTap;

  /// Returns a non null [_NavigationPillInfo].
  ///
  /// This will return an error if called with no [_NavigationPillInfo]
  /// ancestor.
  ///
  /// Used by widgets that are implementing a navigation destination info to
  /// get information like the selected animation and destination number.
  static _NavigationPillInfo of(BuildContext context) {
    final _NavigationPillInfo? result =
        context.dependOnInheritedWidgetOfExactType<_NavigationPillInfo>();
    assert(
      result != null,
      'Navigation destinations need a _NavigationPillInfo parent, '
      'which is usually provided by NavigationDrawer.',
    );
    return result!;
  }

  @override
  bool updateShouldNotify(_NavigationPillInfo oldWidget) {
    return index != oldWidget.index ||
        totalNumberOfDestinations != oldWidget.totalNumberOfDestinations ||
        selectedAnimation != oldWidget.selectedAnimation ||
        onTap != oldWidget.onTap;
  }
}

// Builder widget for widgets that need to be animated from 0 (unselected) to
// 1.0 (selected).
//
// This widget creates and manages an [AnimationController] that it passes down
// to the child through the [builder] function.
//
// When [isSelected] is `true`, the animation controller will animate from
// 0 to 1 (for [duration] time).
//
// When [isSelected] is `false`, the animation controller will animate from
// 1 to 0 (for [duration] time).
//
// If [isSelected] is updated while the widget is animating, the animation will
// be reversed until it is either 0 or 1 again.
//
// Usage:
// ```dart
// _SelectableAnimatedBuilder(
//   isSelected: _isDrawerOpen,
//   builder: (context, animation) {
//     return AnimatedIcon(
//       icon: AnimatedIcons.menu_arrow,
//       progress: animation,
//       semanticLabel: 'Show menu',
//     );
//   }
// )
// ```
class _SelectableAnimatedBuilder extends StatefulWidget {
  /// Builds and maintains an [AnimationController] that will animate from 0 to
  /// 1 and back depending on when [isSelected] is true.
  const _SelectableAnimatedBuilder({
    required this.isSelected,
    this.duration = const Duration(milliseconds: 200),
    required this.builder,
  });

  /// When true, the widget will animate an animation controller from 0 to 1.
  ///
  /// The animation controller is passed to the child widget through [builder].
  final bool isSelected;

  /// How long the animation controller should animate for when [isSelected] is
  /// updated.
  ///
  /// If the animation is currently running and [isSelected] is updated, only
  /// the [duration] left to finish the animation will be run.
  final Duration duration;

  /// Builds the child widget based on the current animation status.
  ///
  /// When [isSelected] is updated to true, this builder will be called and the
  /// animation will animate up to 1. When [isSelected] is updated to
  /// `false`, this will be called and the animation will animate down to 0.
  final Widget Function(BuildContext, Animation<double>) builder;

  ///
  @override
  _SelectableAnimatedBuilderState createState() =>
      _SelectableAnimatedBuilderState();
}

/// State that manages the [AnimationController] that is passed to
/// [_SelectableAnimatedBuilder.builder].
class _SelectableAnimatedBuilderState extends State<_SelectableAnimatedBuilder>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    _controller.duration = widget.duration;
    _controller.value = widget.isSelected ? 1.0 : 0.0;
  }

  @override
  void didUpdateWidget(_SelectableAnimatedBuilder oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.duration != widget.duration) {
      _controller.duration = widget.duration;
    }
    if (oldWidget.isSelected != widget.isSelected) {
      if (widget.isSelected) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(
      context,
      _controller,
    );
  }
}

/// Returns `true` if this animation is ticking forward, or has completed,
/// based on [status].
bool _isForwardOrCompleted(Animation<double> animation) {
  return animation.status == AnimationStatus.forward ||
      animation.status == AnimationStatus.completed;
}

// BEGIN GENERATED TOKEN PROPERTIES - NavigationPills

// Do not edit by hand. The code between the "BEGIN GENERATED" and
// "END GENERATED" comments are generated from data in the Material
// Design token database by the script:
//   dev/tools/gen_defaults/bin/gen_defaults.dart.

// Token database version: v0_143

class _NavigationDrawerDefaultsM3 extends NavigationDrawerThemeData {
  const _NavigationDrawerDefaultsM3(this.context)
      : super(
          elevation: 1.0,
          tileHeight: 56.0,
          indicatorShape: const StadiumBorder(),
          indicatorSize: const Size(336.0, 56.0),
        );

  final BuildContext context;

  @override
  Color? get backgroundColor => Theme.of(context).colorScheme.surface;

  @override
  Color? get surfaceTintColor => Theme.of(context).colorScheme.surfaceTint;

  @override
  Color? get shadowColor => Colors.transparent;

  @override
  Color? get indicatorColor => Theme.of(context).colorScheme.secondaryContainer;

  @override
  WidgetStateProperty<IconThemeData?>? get iconTheme {
    return WidgetStateProperty.resolveWith((Set<WidgetState> states) {
      return IconThemeData(
        size: 24.0,
        color: states.contains(WidgetState.selected)
            ? null
            : Theme.of(context).colorScheme.onSurfaceVariant,
      );
    });
  }

  @override
  WidgetStateProperty<TextStyle?>? get labelTextStyle {
    return WidgetStateProperty.resolveWith((Set<WidgetState> states) {
      final TextStyle style = Theme.of(context).textTheme.labelLarge!;
      return style.apply(
        color: states.contains(WidgetState.selected)
            ? Theme.of(context).colorScheme.onSecondaryContainer
            : Theme.of(context).colorScheme.onSurfaceVariant,
      );
    });
  }
}

// END GENERATED TOKEN PROPERTIES - NavigationPills

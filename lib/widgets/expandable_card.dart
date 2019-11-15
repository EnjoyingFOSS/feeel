// Copyright (c) 2019 Lucas Bernardi
// Code from https://pub.dev/packages/expandable_card
//
// This software is released under the MIT License.
// https://opensource.org/licenses/MIT

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ExpandableCard extends StatefulWidget {
  ExpandableCard(
      {@required this.children,
      this.padding = const EdgeInsets.only(top: 5, left: 20, right: 20),
      this.minHeight = 300,
      this.maxHeight = 700,
      this.backgroundColor = Colors.blueGrey,
      this.imagePath});

  final List<Widget> children;
  final EdgeInsetsGeometry padding;
  final double minHeight;
  final double maxHeight;
  final Color backgroundColor;
  final String imagePath;

  @override
  _ExpandableCardState createState() => _ExpandableCardState();
}

class _ExpandableCardState extends State<ExpandableCard>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _animationScrollPercent;
  bool _isAnimating = false;
  bool _cardIsExpanded = false;
  double _scrollPercent = 0;
  final _bounceOutCurve = Cubic(.04, .22, .1, 1.21);

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
  }

  final Widget positionDebugContent = Column(
    children: <Widget>[Text("Hello world"), SizedBox(height: 50), Text("hi")],
  );

  void _startCardDrag(DragStartDetails details) {
    setState(() {
      _isAnimating = false;
    });
    _animationController.reset();
  }

  void _expandCard(DragUpdateDetails details) {
    final drag = details.delta.dy;
    if (drag < -0.3 && _scrollPercent < 1) {
      setState(() {
        _scrollPercent -= drag / 500;
      });
    } else if (drag > 0.3 && _scrollPercent > 0) {
      setState(() {
        _scrollPercent -= drag / 500;
      });
    }
  }

  void _endCardDrag(DragEndDetails details) {
    setState(() => _isAnimating = true);
    // BottomCard will animate
    if (!_cardIsExpanded &&
        (details.primaryVelocity < -500 || _scrollPercent > 0.6)) {
      _animationScrollPercent =
          Tween<double>(begin: _scrollPercent, end: 1.0).animate(
        CurvedAnimation(parent: _animationController, curve: _bounceOutCurve),
      );
      _animationController.forward();
      setState(() {
        _scrollPercent = 1.0;
        _cardIsExpanded = true;
      });
    } else if (_cardIsExpanded &&
        (details.primaryVelocity > 200 || _scrollPercent < 0.6)) {
      _animationScrollPercent =
          Tween<double>(begin: _scrollPercent, end: 0.0).animate(
        CurvedAnimation(parent: _animationController, curve: _bounceOutCurve),
      );
      _animationController.forward();
      setState(() {
        _scrollPercent = 0.0;
        _cardIsExpanded = false;
      });
    }
    // Card Slider will not expand
    else {
      if (_cardIsExpanded) {
        _animationScrollPercent =
            Tween<double>(begin: _scrollPercent, end: 1.0).animate(
          CurvedAnimation(parent: _animationController, curve: _bounceOutCurve),
        );
        _animationController.forward();
        setState(() => _scrollPercent = 1.0);
      } else {
        _animationScrollPercent =
            Tween<double>(begin: _scrollPercent, end: 0.0).animate(
          CurvedAnimation(parent: _animationController, curve: _bounceOutCurve),
        );
        _animationController.forward();
        setState(() => _scrollPercent = 0.0);
      }
    }
  }

  // todo
  // double _fractionDragged = 0;
  // static const _DRAG_DELTA = 0.3;
  // static const _DRAG_DIVIDER = 500;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        double factor =
            _isAnimating ? _animationScrollPercent.value : _scrollPercent;
        double top = MediaQuery.of(context).size.height -
            widget.minHeight -
            (widget.maxHeight - widget.minHeight) * factor;
        return Positioned(
          top: top,
          child: GestureDetector(
            onVerticalDragStart: _startCardDrag,
            onVerticalDragUpdate:
// (DragUpdateDetails details) { todo ?
//         var dy = details.delta.dy;
//         if ((dy < -_DRAG_DELTA && _fractionDragged < 1) ||
//             (dy > _DRAG_DELTA && _fractionDragged > 0)) {
//           _fractionDragged -= dy / _DRAG_DIVIDER;
//         }
//       },
            _expandCard,
            onVerticalDragEnd: _endCardDrag,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: widget.maxHeight + 50,
              decoration: BoxDecoration(
                color: widget.backgroundColor,
              ),
              child: Padding(
                padding: widget.padding,
                child: Column(
                  children: <Widget>[
                    (widget.imagePath != null)
                        ? Image.asset(widget.imagePath)
                        : Text("Image missing"),
                    Handle(),
                    SizedBox(height: 10),
                    ...widget.children,
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}

class Handle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.remove,
      color: Colors.white30,
      size: 45,
    );
  }
}

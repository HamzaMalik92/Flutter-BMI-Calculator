import 'package:flutter/material.dart';

// ReusableCard is inherited from StatelessWidget - use extends keyword for inheritance
class ReusableCard extends StatelessWidget {
  // StatelessWidgets are immutable (unchanged)

  ReusableCard(
      {@required this.colour,
      this.cardChild}); // @required is used when parameter is required
  final Color colour; // final - once set, cannot be changed
  // final & const
  // Creating child
  final Widget cardChild;
  @override // this keyword will override default properties
  Widget build(BuildContext context) {
    return Container(
        child: cardChild,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,
        ));
  }
}

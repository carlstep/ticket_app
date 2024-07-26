import 'package:flutter/material.dart';

// widget to apply decoration design to the ticket.
// shows half-circle on each end of the ticket

class BigCircle extends StatelessWidget {
  // bool argument is passed to widget in ticketview
  final bool isRight;
  final bool? isColor;

  const BigCircle({
    super.key,
    required this.isRight,
    this.isColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 10,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: isColor == null ? Colors.white : Colors.grey,
          borderRadius: isRight
              // if true, display
              ? const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                )
              // if false, display
              : const BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AvailabilityBadge extends StatelessWidget {
  final bool isAvailable;

  AvailabilityBadge({required this.isAvailable});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: isAvailable
            ? Color(0xFF12B76A).withOpacity(0.1)
            : Color(0xFFF53F3F).withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        isAvailable ? 'Available' : 'Unavailable',
        style: TextStyle(
          color: isAvailable ? Color(0xff12B76A) : Color(0xFFF53F3F),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

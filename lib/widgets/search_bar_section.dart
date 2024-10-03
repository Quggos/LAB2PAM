import 'package:flutter/material.dart';
import '../colors.dart';

class SearchBarSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Color(0xFFD0D5DD), width: 1),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Icon(Icons.search, color: AppColors.primary50, size: 20),
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(color: Color(0xFF98A2B3)),
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            width: 1,
            height: 15,
            color: Color(0xFFD0D5DD),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Icon(Icons.mic_none, color: AppColors.primary50, size: 20),
          ),
        ],
      ),
    );
  }
}

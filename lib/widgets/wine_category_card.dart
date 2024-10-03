import 'package:flutter/material.dart';
import '../colors.dart';

class WineCategoryCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final int itemCount;

  WineCategoryCard({
    required this.imagePath,
    required this.title,
    required this.itemCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 145,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Image section with background color and badge
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            child: Container(
              height: 153,
              color: AppColors.background, // Background color behind the image
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Badge styling with rounded bottom left corner
                  Positioned(
                    top: 0,
                    right: 0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft:
                            Radius.circular(16), // Rounded bottom left corner
                      ),
                      child: Container(
                        width: 37,
                        height: 24,
                        color: AppColors.accent,
                        alignment: Alignment.center,
                        child: Text(
                          '$itemCount',
                          style: TextStyle(
                            color: AppColors.secondary,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Title section
          Expanded(
            child: Center(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: AppColors.primary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

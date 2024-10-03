import 'package:flutter/material.dart';
import '../colors.dart';

class FavoriteButton extends StatelessWidget {
  final bool isFavorite;
  final VoidCallback onToggle;

  FavoriteButton({required this.isFavorite, required this.onToggle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onToggle,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        decoration: BoxDecoration(
          color: isFavorite ? AppColors.accent : AppColors.secondary,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Color(0xFFD0D5DD)),
        ),
        child: Row(
          children: [
            Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: isFavorite ? AppColors.secondary : AppColors.primary,
              size: 16,
            ),
            SizedBox(width: 8),
            Text(
              isFavorite ? 'Added' : 'Favourite',
              style: TextStyle(
                color: isFavorite ? AppColors.secondary : AppColors.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

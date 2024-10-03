import 'package:flutter/material.dart';
import '../colors.dart';
import 'favorite_button.dart';
import 'price_section.dart';

class WineBottomSection extends StatelessWidget {
  final bool isFavorite;
  final String price;
  final int criticScore;
  final VoidCallback onFavoriteToggle;

  WineBottomSection({
    required this.isFavorite,
    required this.price,
    required this.criticScore,
    required this.onFavoriteToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
        border: Border(
          top: BorderSide(color: AppColors.border, width: 1),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FavoriteButton(
                isFavorite: isFavorite,
                onToggle: onFavoriteToggle,
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Text(
                    "Critics' Scores: ",
                    style: TextStyle(
                      color: AppColors.primary50,
                    ),
                  ),
                  Text(
                    '$criticScore',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                    ),
                  ),
                  Text(
                    ' / 100',
                    style: TextStyle(
                      color: AppColors.primary50,
                    ),
                  ),
                ],
              ),
            ],
          ),
          PriceSection(price: price),
        ],
      ),
    );
  }
}

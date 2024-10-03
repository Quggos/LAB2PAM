import 'package:flutter/material.dart';
import '../colors.dart';
import 'availability_badge.dart';
import 'wine_bottom_section.dart';

class WineCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String wineType;
  final String wineNotes;
  final String country;
  final bool isAvailable;
  final String price;
  final int criticScore;
  final String wineTypeIconPath;
  final String countryIconPath;
  final bool isFavorite;
  final VoidCallback onFavoriteToggle;

  const WineCard({
    required this.imagePath,
    required this.title,
    required this.wineType,
    required this.wineNotes,
    required this.country,
    required this.isAvailable,
    required this.price,
    required this.criticScore,
    required this.wineTypeIconPath,
    required this.countryIconPath,
    required this.isFavorite,
    required this.onFavoriteToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Content Section (Background Color)
          Container(
            decoration: BoxDecoration(
              color: AppColors.secondary,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Fixed size for the image
                    SizedBox(
                      height: 182,
                      width: 110,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          imagePath,
                          fit: BoxFit.cover,
                          cacheWidth: 110, // Optimized for performance
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AvailabilityBadge(isAvailable: isAvailable),
                          const SizedBox(height: 8),
                          // Apply Volkhov font to the wine title
                          Text(
                            title,
                            style: const TextStyle(
                              fontFamily: 'Volkhov',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: AppColors.primary,
                            ),
                          ),
                          const SizedBox(height: 8),
                          // Wine type and wine notes with icon
                          Row(
                            children: [
                              // Fixed size for the icon
                              SizedBox(
                                width: 20,
                                height: 20,
                                child: Image.asset(
                                  wineTypeIconPath,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: wineType,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: AppColors.primary,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' ($wineNotes)',
                                        style: const TextStyle(
                                          fontSize: 12,
                                          color: AppColors.primary25,
                                        ),
                                      ),
                                    ],
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          // Country with icon
                          Row(
                            children: [
                              // Country icon
                              SizedBox(
                                width: 20,
                                height: 20,
                                child: Image.asset(
                                  countryIconPath,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'From ',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: AppColors.primary25,
                                        ),
                                      ),
                                      TextSpan(
                                        text: country.replaceFirst(
                                            ' de Blancs, France', ''),
                                        style: const TextStyle(
                                          fontSize: 14,
                                          color: AppColors.primary,
                                        ),
                                      ),
                                      const TextSpan(
                                        text: ' de Blancs, France',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: AppColors.primary25,
                                        ),
                                      ),
                                    ],
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Footer Section (Favorite button, price, and critic score)
          WineBottomSection(
            isFavorite: isFavorite,
            price: price,
            criticScore: criticScore,
            onFavoriteToggle: onFavoriteToggle,
          ),
        ],
      ),
    );
  }
}

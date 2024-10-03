import 'package:flutter/material.dart';
import 'wine_card.dart';
import 'wine_category_list.dart';
import 'section_header.dart';

class WineListWithHeader extends StatefulWidget {
  final int wineCardCount = 50000;

  @override
  _WineListWithHeaderState createState() => _WineListWithHeaderState();
}

class _WineListWithHeaderState extends State<WineListWithHeader> {
  Map<int, bool> favoriteStatus = {};

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.wineCardCount + 2, // +2 to account for headers
      padding: EdgeInsets.symmetric(horizontal: 16),
      itemBuilder: (context, index) {
        if (index == 0) {
          // Render the "Shop wines by" section and categories
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SectionHeader(title: "Shop wines by", actionText: ""),
              SizedBox(height: 16),
              WineCategoryList(),
              SizedBox(height: 20),
              SectionHeader(title: "Wine", actionText: "view all"),
              SizedBox(height: 20),
            ],
          );
        } else {
          // Render the wine cards
          index -= 1; // Adjust for the first header
          bool isFavorite = favoriteStatus[index] ?? false;

          return Padding(
            padding: const EdgeInsets.only(bottom: 20.0), // Adds 20px gap between cards
            child: WineCard(
              imagePath: 'assets/images/product_cards/wine${(index % 4) + 1}.jpg',
              title: 'Wine Title $index',
              wineType: index % 2 == 0 ? 'Red Wine' : 'Sparkling Wine',
              wineNotes: 'Notes for wine $index',
              country: 'Country $index',
              isAvailable: index % 2 == 0,
              price: '${(index + 20) * 10}', // Price without "$" symbol
              criticScore: 90 + (index % 10),
              wineTypeIconPath: 'assets/icons/sparkling_wine_icon.png',
              countryIconPath: 'assets/icons/france_flag_icon.png',
              isFavorite: isFavorite,
              onFavoriteToggle: () {
                setState(() {
                  favoriteStatus[index] = !isFavorite;
                });
              },
            ),
          );
        }
      },
    );
  }
}

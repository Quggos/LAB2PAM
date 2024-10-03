import 'package:flutter/material.dart';
import '../colors.dart';

class LocationSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Address Section
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.location_on_outlined,
                      color: AppColors.primary25, size: 16),
                  SizedBox(width: 4),
                  Text(
                    'Donnerville Drive',
                    style: TextStyle(
                      color: AppColors.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Icon(Icons.arrow_drop_down,
                      color: AppColors.primary25, size: 16),
                ],
              ),
              SizedBox(height: 2),
              Text(
                '4 Donnerville Hall, Donnerville Drive, Admaston, TF5 0DF',
                style: TextStyle(
                  color: Color(0xFF98A2B3),
                  fontSize: 12,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        SizedBox(width: 32),
        // Notification Icon with Badge
        Stack(
          clipBehavior: Clip.none,
          children: [
            // Bell icon with rounded border
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: AppColors.secondary,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Color(0xFFD0D5DD), width: 1),
              ),
              child: Center(
                child: Icon(
                  Icons.notifications_none,
                  color: AppColors.primary50,
                  size: 24,
                ),
              ),
            ),
            // Notification badge
            Positioned(
              top: -8,
              left: 30,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: AppColors.accent,
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: Color(0xFFF5DFE5),
                    width: 1,
                  ),
                ),
                constraints: BoxConstraints(
                  minWidth: 24,
                  minHeight: 24,
                ),
                child: Center(
                  child: Text(
                    '12',
                    style: TextStyle(
                      color: AppColors.secondary,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

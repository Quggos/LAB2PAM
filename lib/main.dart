import 'package:flutter/material.dart';
import 'colors.dart';
import 'widgets/location_section.dart';
import 'widgets/search_bar_section.dart';
import 'widgets/wine_filter_section.dart';
import 'widgets/wine_list_with_header.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wine App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Archivo',
        scaffoldBackgroundColor: AppColors.secondary,
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.secondary,
          elevation: 0,
          toolbarHeight: 70,
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Fixed header section
          Container(
            padding: const EdgeInsets.all(16.0),
            color: AppColors.secondary, // Header with background
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LocationSection(),
                SizedBox(height: 16),
                SearchBarSection(),
                SizedBox(height: 16),
                WineFilterSection(),
              ],
            ),
          ),
          // Scrollable content section
          Expanded(
            child: WineListWithHeader(), // We will add the header in WineList
          ),
        ],
      ),
    );
  }
}

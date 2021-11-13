import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/utils/locator.dart';
import 'package:movie_app/view/Movie_List/movie_list_view.dart';

import 'config/apptheme.dart';

void main() {
  runApp(MovieApp());
  setUpLocator();
}

class MovieApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: AppTheme.themeColors(context),
      debugShowCheckedModeBanner: false,
      home: MovieListView(),
    );
  }
}

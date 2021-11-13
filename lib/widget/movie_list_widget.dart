import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/constant/color_constants.dart';
import 'package:movie_app/model/movieList.dart';
import 'package:movie_app/view/Movie_detail/movie_detail_view.dart';

class MovieListWidget extends StatelessWidget {
  MovieListWidget({Key key, @required this.movieList})
      : assert(movieList != null),
        super(key: key);

  final Movies movieList;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorConstants.primaryColor,
      elevation: 8.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: InkWell(
        onTap: () {
          Get.to(MovieDetailView(movieList));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AspectRatio(aspectRatio: 0.8,
              child: Image.network(
                '${movieList.thumbnail}',
                fit: BoxFit.scaleDown,
                // color: ColorConstants.primaryGreyColor,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Center(
              child: Text(
                movieList.name,
                key: Key('movie_title_text'),
                style: TextStyle(
                  color: ColorConstants.whiteColor,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Center(
              child: Text(
                movieList.year,
                key: Key('movie_year_text'),
                style: TextStyle(
                  color: ColorConstants.whiteColor,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
          ],
        ),
      ),
    );
  }
}

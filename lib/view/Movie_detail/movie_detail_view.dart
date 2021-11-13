import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/componet/commonAppbar.dart';
import 'package:movie_app/constant/StringConstant.dart';
import 'package:movie_app/constant/color_constants.dart';
import 'package:movie_app/model/movieList.dart';

class MovieDetailView extends StatelessWidget {
  Movies movie;

  MovieDetailView(this.movie);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(
          onPress: () {
            Get.back();
          }, title: "${movie?.name} (${movie?.year})"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 0.8,
              child: Image.network(movie?.thumbnail),
            ),
            if(movie?.genres?.isNotEmpty)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Genres : ",
                    style: TextStyle(
                        color: ColorConstants.whiteColor,
                        fontWeight: FontWeight.bold,
                        height: 1,
                        fontSize: 18),
                  ),
                  Flexible(
                    child: Text(
                      "${movie.genres.join(",")}",
                      style: TextStyle(
                          height: 1,
                          color: ColorConstants.whiteColor,
                          fontWeight: FontWeight.normal,
                          fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            if(movie?.director?.isNotEmpty)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Director : ",
                    style: TextStyle(
                        color: ColorConstants.whiteColor,
                        fontWeight: FontWeight.bold,
                        height: 1,
                        fontSize: 18),
                  ),
                  Flexible(
                    child: Text(
                      "${movie?.director}",
                      style: TextStyle(
                          height: 1,
                          color: ColorConstants.whiteColor,
                          fontWeight: FontWeight.normal,
                          fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            if(movie?.mainStar?.isNotEmpty)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Lead Star : ",
                    style: TextStyle(
                        color: ColorConstants.whiteColor,
                        fontWeight: FontWeight.bold,
                        height: 1,
                        fontSize: 18),
                  ),
                  Flexible(
                    child: Text(
                      "${movie?.mainStar}",
                      style: TextStyle(
                          height: 1,
                          color: ColorConstants.whiteColor,
                          fontWeight: FontWeight.normal,
                          fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            if(movie?.description?.isNotEmpty)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Text(
                      "${movie?.description}",
                      style: TextStyle(
                          height: 1,
                          color: ColorConstants.whiteColor,
                          fontWeight: FontWeight.normal,
                          fontSize: 16),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

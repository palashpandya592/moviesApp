import 'package:dio/dio.dart';
import 'package:movie_app/constant/ApiConstant.dart';
import 'package:movie_app/model/movieList.dart';

import 'locator.dart';

class Api {
  Dio dio = locator<Dio>();

  Future<MovieListData> getMovieList() async {
    final response = await dio.get(
      ApiConstants.BASE_URL + ApiConstants.GET_MOVIE_LIST,
    );
    return  MovieListData.fromJson(response.data);
  }
}

import 'package:get/get.dart';
import 'package:movie_app/model/movieList.dart';
import 'package:movie_app/utils/api.dart';
import 'package:movie_app/utils/locator.dart';

class MovieListController extends GetxController {
  var movieList = List<Movies>().obs;
  Api _api = locator<Api>();

  @override
  void onInit() {
    fetchPopularMovie();
    // TODO: implement onInit
    super.onInit();
  }

  Future<MovieListData> fetchPopularMovie() async {
    MovieListData response = await _api.getMovieList();
    movieList.assignAll(response.data.movies);
    return response;
  }
}

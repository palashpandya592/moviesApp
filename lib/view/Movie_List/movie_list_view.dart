import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/componet/commonAppbar.dart';
import 'package:movie_app/constant/StringConstant.dart';
import 'package:movie_app/controller/MovieListController.dart';
import 'package:movie_app/widget/movie_list_widget.dart';

class MovieListView extends StatelessWidget {
  final _scrollController = ScrollController();
  final controller = Get.put(MovieListController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(onPress: () {Get.back();}, title: StringConstant.App_name),
      body:OrientationBuilder(builder: (context, orientation) {
        return Stack(
          children: [
            CustomScrollView(
              controller: _scrollController,
              shrinkWrap: true,
              slivers: [Obx(()=> SliverGrid(
                delegate: SliverChildBuilderDelegate(
                      (context, index) {
                    return MovieListWidget(
                        movieList: controller.movieList[index]);
                  },
                  childCount: controller.movieList.length,
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                  orientation == Orientation.portrait ? 2 : 3,
                  childAspectRatio: 0.6,
                ),
              )),


                /*  SliverToBoxAdapter(
                  child: BottomLoadingIndicator(),
                )*/
              ],
            ),
          ],
        );
      }),
    );
  }
}

import 'package:doraemon_app/ui/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';
import '../provider/popular_movies_provider.dart';
import '../ui/popular_movies_card.dart';

class PopularMoviesPage extends StatefulWidget {
  const PopularMoviesPage({Key? key}) : super(key: key);

  @override
  State<PopularMoviesPage> createState() => _PopularMoviesPageState();
}

class _PopularMoviesPageState extends State<PopularMoviesPage> {
  bool isChecked = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    double widthContent;
    if (screenSize.width > 600) {
      widthContent = MediaQuery.of(context).size.width * 0.6;
    } else {
      widthContent = MediaQuery.of(context).size.width;
    }

    return ChangeNotifierProvider<PopularMoviesProvider>(
      create: (context) => PopularMoviesProvider(context),
      child: Consumer<PopularMoviesProvider>(
        builder: (context, provider, _) => (provider.loading == true)
            ? SafeArea(
                child: Shimmer.fromColors(
                  baseColor: Colors.black26,
                  highlightColor: Colors.yellow,
                  child: const Center(
                    child: Text(
                      'Mohon Tunggu',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              )
            : Scaffold(
                resizeToAvoidBottomInset: false,
                body: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 15.0,
                                offset: Offset(0.0, 0.75)),
                          ],
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 18),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            Container(
                              width: double.infinity,
                              child: Text(
                                "Popular Movies",
                                style: AppTextStyle.boldTextStyle
                                    .copyWith(fontSize: 18),
                              ),
                            ),
                            const SizedBox(
                              height: 13,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        // child: RefreshIndicator(
                        //   onRefresh: () {
                        //     return AppRouter.navToMainSupervisor(context, 0, '');
                        //   },
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(13, 13, 13, 0),
                          child: StaggeredGridView.countBuilder(
                            crossAxisCount: 3,
                            itemCount: provider.popularMoviesData.length,
                            itemBuilder: (context, i) => PopularMoviesCard(
                                provider.popularMoviesData[i].id,
                                provider.popularMoviesData[i].original_title,
                                provider.popularMoviesData[i].title,
                                provider.popularMoviesData[i].poster_path,
                                provider.popularMoviesData[i].vote_average
                                    .toString()),
                            staggeredTileBuilder: (i) =>
                                const StaggeredTile.fit(1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}

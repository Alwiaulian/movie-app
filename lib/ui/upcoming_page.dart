import 'package:doraemon_app/ui/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';
import '../navbar.dart';
import '../provider/upcoming_provider.dart';
import '../ui/upcoming_card.dart';

class UpComing extends StatefulWidget {
  const UpComing({Key? key}) : super(key: key);

  @override
  State<UpComing> createState() => UpComingState();
}

class UpComingState extends State<UpComing> {
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

    return ChangeNotifierProvider<UpComingProvider>(
      create: (context) => UpComingProvider(context),
      child: Consumer<UpComingProvider>(
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
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: Text(
                                "Upcoming Movies",
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
                        child: RefreshIndicator(
                          onRefresh: () {
                            return Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Navbar(),
                                ));
                          },
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(13, 13, 13, 0),
                            child: StaggeredGridView.countBuilder(
                              crossAxisCount: 3,
                              itemCount: provider.upComingModelData.length,
                              itemBuilder: (context, i) => UpComingCard(
                                  provider.upComingModelData[i].id,
                                  provider.upComingModelData[i].original_title,
                                  provider.upComingModelData[i].title,
                                  provider.upComingModelData[i].poster_path,
                                  provider.upComingModelData[i].vote_average
                                      .toString()),
                              staggeredTileBuilder: (i) =>
                                  const StaggeredTile.fit(1),
                            ),
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

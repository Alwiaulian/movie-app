// import 'dart:html';

import 'package:doraemon_app/ui/theme/theme.dart';

// import 'package:bintang_ezella_mobile_app/ui/view/main/supervisor/tambah_transaksi_page.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe

class PopularMoviesCard extends StatelessWidget {
  final int id;
  final String original_title;
  final String title;
  final String poster_path;
  final String vote_average;

  PopularMoviesCard(this.id, this.original_title, this.title, this.poster_path,
      this.vote_average);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: InkWell(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                            'https://www.themoviedb.org/t/p/w220_and_h330_face$poster_path',
                            width: double.infinity,
                            height: 110,
                            fit: BoxFit.cover),
                      ),
                      Positioned(
                        left: 0,
                        bottom: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.greenColor,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: const EdgeInsets.fromLTRB(4, 1, 4, 1),
                          child: Column(
                            children: [
                              Icon(
                                Icons.star,
                                color: AppColors.lightGrayColor,
                                size: 16,
                              ),
                              Text(
                                vote_average,
                                style: AppTextStyle.boldTextStyle.copyWith(
                                    fontSize: 10, color: AppColors.whiteColor),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    child: Text(
                      title,
                      style: AppTextStyle.boldTextStyle.copyWith(fontSize: 14),
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Container(
                    height: 28,
                    child: Text(
                      original_title,
                      style:
                          AppTextStyle.regularTextStyle.copyWith(fontSize: 13),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NowPlayingModel {
  late int page;
  List<NowPlayingModelData>? results;

  NowPlayingModel({required this.page, this.results});

  NowPlayingModel.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      results = <NowPlayingModelData>[];
      json['results'].forEach((v) {
        results?.add(NowPlayingModelData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> results = <String, dynamic>{};

    if (this.results != null) {
      results['results'] = this.results?.map((v) => v.toJson()).toList();
    }
    return results;
  }
}

class NowPlayingModelData {
  bool adult;
  var backdropPath;
  int id;
  String original_language;
  String original_title;
  String overview;
  double popularity;
  var poster_path;
  String release_date;
  String title;
  bool video;
  var vote_average;
  int vote_count;

  NowPlayingModelData({
    required this.adult,
    required this.backdropPath,
    required this.id,
    required this.original_language,
    required this.original_title,
    required this.overview,
    required this.popularity,
    required this.poster_path,
    required this.release_date,
    required this.title,
    required this.video,
    required this.vote_average,
    required this.vote_count,
  });
  factory NowPlayingModelData.fromJson(Map<String, dynamic> json) =>
      NowPlayingModelData(
        adult: json["adult"],
        backdropPath: json["backdropPath"],
        id: json["id"],
        original_language: json["original_language"],
        original_title: json["original_title"],
        overview: json["overview"],
        popularity: json["popularity"],
        poster_path: json["poster_path"],
        release_date: json["release_date"],
        title: json["title"],
        video: json["video"],
        vote_average: json["vote_average"],
        vote_count: json["vote_count"],
      );

  Map<String, dynamic> toJson() => {
        "adult": adult,
        "backdropPath": backdropPath,
        "id": id,
        "original_language": original_language,
        "original_title": original_title,
        "overview": overview,
        "popularity": popularity,
        "poster_path": poster_path,
        "release_date": release_date,
        "title": title,
        "video": video,
        "vote_average": vote_average,
        "vote_count": vote_average,
      };
}

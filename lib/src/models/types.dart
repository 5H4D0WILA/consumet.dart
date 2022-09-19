class IProviderStats {
  final String name;
  final String baseUrl;
  final List<String> lang;
  final bool isNSFW;
  final String logo;
  final String classPath;
  final bool isWorking;

  IProviderStats({
    required this.baseUrl,
    required this.lang,
    required this.isNSFW,
    required this.logo,
    required this.classPath,
    required this.isWorking,
    required this.name,
  });
}

class MediaFormat {
  static String get TV => 'TV';
  static String get TV_SHORT => 'TV_SHORT';
  static String get MOVIE => 'MOVIE';
  static String get SPECIAL => 'SPECIAL';
  static String get OVA => 'OVA';
  static String get ONA => 'ONA';
  static String get MUSIC => 'MUSIC';
  static String get MANGA => 'MANGA';
  static String get NOVEL => 'NOVEL';
  static String get ONE_SHOT => 'ONE_SHOT';
}

class MediaStatus {
  static String get ONGOING => 'Ongoing';
  static String get COMPLETED => 'Completed';
  static String get HIATUS => 'Hiatus';
  static String get CANCELLED => 'Cancelled';
  static String get NOT_YET_AIRED => 'Not yet aired';
  static String get UNKNOWN => 'Unknown';
}

class IAnimeResult {
  final String id;
  final String title;
  final String url;
  final String image;
  final String cover;
  final MediaStatus status;
  final int rating;
  final MediaFormat type;
  final String releaseDate;

  IAnimeResult({
    required this.id,
    required this.title,
    required this.url,
    required this.image,
    required this.cover,
    required this.status,
    required this.rating,
    required this.type,
    required this.releaseDate,
  });
}

class SubOrDub {}

class Trailer {
  final String id;
  String? site;
  String? thumbnail;

  Trailer({
    required this.id,
    this.site,
    this.thumbnail,
  });
}

class FuzzyDate {
  int? year;
  int? month;
  int? day;
}

class IAnimeEpisode {}

class IAnimeInfo extends IAnimeResult {
  final String malId;
  final List<String> genres;
  final String description;
  final MediaStatus status;
  final int totalEpisodes;
  final SubOrDub subOrDub;
  final List<String> synonyms;

  ///
  /// two letter representation of coutnry: e.g JP for japan
  ///
  final String countryOfOrigin;
  final bool isAdult;
  final bool isLicensed;

  ///
  /// `FALL`, `WINTER`, `SPRING`, `SUMMER`
  ///
  final String season;
  final List<String> studios;
  final String color;
  final String cover;
  final Trailer trailer;
  final List<IAnimeEpisode> episodes;
  final FuzzyDate startDate;
  final FuzzyDate endDate;
  final List<IAnimeResult> recommendations;
  final List<IAnimeResult> relations;

  IAnimeInfo({
    required this.malId,
    required this.genres,
    required this.description,
    required this.status,
    required this.totalEpisodes,
    required this.subOrDub,
    required this.synonyms,
    required this.countryOfOrigin,
    required this.isAdult,
    required this.isLicensed,
    required this.season,
    required this.studios,
    required this.color,
    required this.cover,
    required this.trailer,
    required this.episodes,
    required this.startDate,
    required this.endDate,
    required this.recommendations,
    required this.relations,
  });
}

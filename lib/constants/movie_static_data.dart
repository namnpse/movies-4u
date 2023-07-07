import 'image_routes.dart';

class MovieStaticData {
  static const List profileOptionsData = [
    ['Edit Profile', ImagesRoute.icProfile],
    ['Notification', ImagesRoute.icBell],
    ['Download', ImagesRoute.icDownload],
    ['Security', ImagesRoute.icSecurity],
    ['Language', ImagesRoute.icLanguage],
    ['Dark Mode', ImagesRoute.icEye],
    ['Help Center', ImagesRoute.icHelp],
    ['Privacy policy', ImagesRoute.icPrivacy],
  ];

  static const List<String> downloadMovieNames = [
    'Light year',
    'Top Gun: Maverick',
    'Thor: Love & Thunder',
    'Stranger Things 4: Epi...',
    'Avatar: The Way of Wa...',
    'Doctor Strange in the ...',
  ];

  static const List<String> movieFilters = [
    'Movie',
    'US',
    'Action',
    '2022',
    'Latest Release'
  ];

  static const List<String> exploreModalTitles = [
    'Categories',
    'Regions',
    'Genre',
    'Date',
    'Sort'
  ];

  static const List<String> subscriptionCardFeaturesTitle = [
    'Watch all you want. Ad-free.',
    'Allows streaming of 4K.',
    'Video & Audio Quality is Better.'
  ];
}

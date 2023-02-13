/// This is the barrel file I created to handle import statements needed
/// all over the app. With this file, I only have to import this one file,
/// and it helps to keep the 'import' sections of files clean.

/// Model classes
export 'src/models/tv_result.dart';
export 'src/models/tv_on_air.dart';
export 'src/models/tv_popular.dart';
export 'src/models/movie_result.dart';
export 'src/models/movie_now_playing.dart';
export 'src/models/movie_popular.dart';
export 'src/models/movie_search.dart';
export 'src/models/movie_top_rated.dart';
export 'src/models/movie_trending.dart';
export 'src/models/movie_upcoming.dart';
export 'src/models/entity_movie.dart';
export 'src/models/entity_tv.dart';

/// Data classes - Database, API, Repository
export 'src/data/local_source/local_db.dart';
export 'src/data/remote_source/movie_api.dart';
export 'src/data/remote_source/tv_api.dart';
export 'src/data/repository/repo.dart';

/// Utility classes and functions
export 'src/utils/utils_extensions.dart';
export 'src/utils/utils_functions.dart';
export 'src/utils/app_routes.dart';
export 'src/utils/animation/shimmer/custom_splash_animation.dart';
export 'src/utils/animation/shimmer/shimmer_animation.dart';
export 'src/utils/animation/shimmer/shimmer_animator.dart';
export 'src/utils/animation/shimmer_list_movie_summary.dart';
export 'src/utils/animation/shimmer_list_now_showing.dart';
export 'src/utils/animation/shimmer_list_tv_summary.dart';

/// Widgets used across UI
export 'src/screens/widgets/card_explore.dart';
export 'src/screens/widgets/card_now_showing.dart';
export 'src/screens/widgets/card_now_showing_tv.dart';
export 'src/screens/widgets/generic_dialog.dart';
export 'src/screens/widgets/card_movie_summary.dart';
export 'src/screens/widgets/card_tv_summary.dart';

/// Screens
export 'src/screens/home/screen_explore.dart';
export 'src/screens/home/screen_home.dart';
export 'src/screens/home/screen_movie.dart';
export 'src/screens/details/screen_movie_detail.dart';
export 'src/screens/details/screen_tv_detail.dart';
export 'src/screens/bookmarks/screen_bookmark_movie.dart';
export 'src/screens/bookmarks/screen_bookmark_tv.dart';
export 'src/screens/tv/screen_popular_tv.dart';
export 'src/screens/movie/screen_popular_movie.dart';
export 'src/screens/movie/screen_top_rated_movie.dart';
export 'src/screens/movie/screen_trending_movie.dart';

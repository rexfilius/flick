/// This is the barrel file I created to handle import statements needed
/// all over the app. With this file, I only have to import this one file,
/// and it helps to keep the 'import' sections of files clean.

/// Model classes
export 'src/modules/shared/models/tv_result.dart';
export 'src/modules/shared/models/tv_on_air.dart';
export 'src/modules/shared/models/tv_popular.dart';
export 'src/modules/shared/models/movie_result.dart';
export 'src/modules/shared/models/movie_now_playing.dart';
export 'src/modules/shared/models/movie_popular.dart';
export 'src/modules/shared/models/movie_search.dart';
export 'src/modules/shared/models/movie_top_rated.dart';
export 'src/modules/shared/models/movie_trending.dart';
export 'src/modules/shared/models/movie_upcoming.dart';
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
export 'src/utils/api_constants.dart';
export 'src/config/app_routes.dart';
export 'src/config/app_theme.dart';
export 'src/utils/animation/shimmer/custom_splash_animation.dart';
export 'src/utils/animation/shimmer/shimmer_animation.dart';
export 'src/utils/animation/shimmer/shimmer_animator.dart';
export 'src/utils/animation/shimmer_list_movie_summary.dart';
export 'src/utils/animation/shimmer_list_now_showing.dart';
export 'src/utils/animation/shimmer_list_tv_summary.dart';

/// Widgets used across UI
export 'src/modules/shared/widgets/card_explore.dart';
export 'src/modules/shared/widgets/card_now_showing.dart';
export 'src/modules/shared/widgets/card_now_showing_tv.dart';
export 'src/modules/shared/widgets/generic_dialog.dart';
export 'src/modules/shared/widgets/card_movie_summary.dart';
export 'src/modules/shared/widgets/card_tv_summary.dart';
export 'src/modules/shared/widgets/card_movie_entity_summary.dart';
export 'src/modules/shared/widgets/card_tv_entity_summary.dart';
export 'src/modules/shared/widgets/error_text.dart';
export 'src/modules/home/ui/screen_explore.dart';
export 'src/modules/home/ui/screen_home.dart';
export 'src/modules/home/ui/screen_movie.dart';
export 'src/modules/home/ui/components/movie_search_delegate.dart';
export 'src/modules/details/screen_movie_detail.dart';
export 'src/modules/details/screen_tv_detail.dart';
export 'src/modules/bookmarks/ui/screen_bookmark_movie.dart';
export 'src/modules/bookmarks/ui/screen_bookmark_tv.dart';
export 'src/modules/tv/screen_popular_tv.dart';
export 'src/modules/movie/screen_popular_movie.dart';
export 'src/modules/movie/screen_top_rated_movie.dart';
export 'src/modules/movie/screen_trending_movie.dart';

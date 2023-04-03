import 'dart:async';

import 'package:flick/src/modules/home/data/home_repo.dart';
import 'package:flick/src/modules/shared/models/movie_now_playing.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final homeRepoProvider = Provider<HomeRepo>((ref) {
  return HomeRepo();
});

final homeControllerProvider =
    AsyncNotifierProvider<HomeController, MovieNowPlaying>(() {
  return HomeController();
});

class HomeController extends AsyncNotifier<MovieNowPlaying> {
  @override
  FutureOr<MovieNowPlaying> build() {
    return getNowPlayingMovies();
  }

  Future<MovieNowPlaying> getNowPlayingMovies() async {
    final homeRepo = ref.watch(homeRepoProvider);
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      return homeRepo.getNowPlayingMovies();
    });
    return state.value!;
  }
}

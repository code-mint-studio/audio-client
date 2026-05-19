import 'package:audio_client/features/home/domain/entities/story.dart';
import 'package:audio_client/features/home/presentation/providers/home_data_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_controller.g.dart';

@riverpod
class HomeController extends _$HomeController {
  @override
  Future<List<Story>> build() async {
    return _fetchStories();
  }

  Future<List<Story>> _fetchStories() {
    return ref.read(getHomeStoriesProvider).call();
  }

  Future<void> refresh() async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(
      _fetchStories,
    );
  }
}

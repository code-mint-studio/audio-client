import 'package:audio_client/features/home/data/datasource/home_remote_datasource.dart';
import 'package:audio_client/features/home/domain/entities/story.dart';
import 'package:audio_client/features/home/domain/repositories/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  HomeRepositoryImpl(this.remote);
  final HomeRemoteDatasource remote;

  @override
  Future<List<Story>> getStories() async {
    final response = await remote.getStories();

    return response.stories.map((e) {
      return Story(
        id: e.id,
        title: e.title,
        image: e.image,
        description: e.description,
        totalChapters: e.totalChapters,
      );
    }).toList();
  }
}

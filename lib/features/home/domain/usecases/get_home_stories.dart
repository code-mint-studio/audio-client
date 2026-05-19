import 'package:audio_client/features/home/domain/entities/story.dart';
import 'package:audio_client/features/home/domain/repositories/home_repository.dart';

class GetHomeStories {
  GetHomeStories(this.repository);
  final HomeRepository repository;

  Future<List<Story>> call() {
    return repository.getStories();
  }
}

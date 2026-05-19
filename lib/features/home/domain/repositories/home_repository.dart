import 'package:audio_client/features/home/domain/entities/story.dart';

abstract class HomeRepository {
  Future<List<Story>> getStories();
}

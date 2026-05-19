import 'package:audio_client/core/network/dio_client.dart';
import 'package:audio_client/features/home/data/datasource/home_remote_datasource.dart';
import 'package:audio_client/features/home/data/repositories/home_repository_impl.dart';
import 'package:audio_client/features/home/domain/repositories/home_repository.dart';
import 'package:audio_client/features/home/domain/usecases/get_home_stories.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioClientProvider = Provider<DioClient>((ref) {
  return DioClient();
});

final homeRemoteDatasourceProvider = Provider<HomeRemoteDatasource>((ref) {
  return HomeRemoteDatasource(
    ref.read(dioClientProvider),
  );
});

final homeRepositoryProvider = Provider<HomeRepository>((ref) {
  return HomeRepositoryImpl(
    ref.read(homeRemoteDatasourceProvider),
  );
});

final getHomeStoriesProvider = Provider<GetHomeStories>((ref) {
  return GetHomeStories(
    ref.read(homeRepositoryProvider),
  );
});

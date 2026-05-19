import 'package:audio_client/features/home/presentation/controllers/home_controller.dart';
import 'package:audio_client/features/home/presentation/widgets/story_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stories = ref.watch(
      homeControllerProvider,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Audio Books'),
      ),
      body: stories.when(
        data: (items) {
          return RefreshIndicator(
            onRefresh: () {
              return ref.read(homeControllerProvider.notifier).refresh();
            },
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (_, index) {
                final story = items[index];

                return StoryCard(
                  story: story,
                );
              },
            ),
          );
        },
        loading: () {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
        error: (e, st) {
          return Center(
            child: Text(
              e.toString(),
            ),
          );
        },
      ),
    );
  }
}

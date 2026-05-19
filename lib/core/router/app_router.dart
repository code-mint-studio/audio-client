import 'package:audio_client/features/home/presentation/screens/home_screen.dart';
import 'package:audio_client/features/player/presentation/screens/player_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static const home = '/';

  static String player(
    String id,
  ) {
    return '/player/$id';
  }

  static String categoryDetail(
    String id,
  ) {
    return '/category/$id';
  }
}

final rootNavigatorKey = GlobalKey<NavigatorState>();

final appRouter = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: Routes.home,
  routes: [
    GoRoute(
      path: Routes.home,
      builder: (_, __) => const HomeScreen(),
    ),
    GoRoute(
      path: Routes.player('playlist 1'),
      builder: (context, state) {
        final storyId = state.pathParameters['id']!;
        return PlayerScreen(
          storyId: storyId,
        );
      },
    ),
  ],
);

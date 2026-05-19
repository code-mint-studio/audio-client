import 'package:flutter/material.dart';

class PlayerScreen extends StatelessWidget {
  const PlayerScreen({
    required this.storyId,
    super.key,
  });

  final String storyId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Player'),
      ),
      body: Center(
        child: Text(
          'Player $storyId',
        ),
      ),
    );
  }
}

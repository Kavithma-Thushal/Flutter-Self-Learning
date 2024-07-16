import 'package:flutter/material.dart';
import 'components/MainFeed.dart';
import 'components/ProfileHeader.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFF0F0F0),
        ),
        child: Column(
          children: const [
            ProfileHeader(),
            Expanded(child: MainFeed()),
          ],
        ),
      ),
    );
  }
}

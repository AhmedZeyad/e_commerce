import 'package:flutter/material.dart';

import '../../data/repo/vab_bar_pages.dart';
import '../widgets/app_bottom_bar.dart';

class FrameScreen extends StatefulWidget {
  const FrameScreen({super.key});

  @override
  State<FrameScreen> createState() => _FrameScreenState();
}

class _FrameScreenState extends State<FrameScreen> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.all(20),
        child: pages[pageIndex],
      ),
      bottomNavigationBar: AppBottomNav(
        pageIndex: pageIndex,
        onTap: (int index) {
          setPage(index);
        },
      ),
    );
  }

  setPage(int index) {
    setState(() {
      pageIndex = index;
    });
  }
}

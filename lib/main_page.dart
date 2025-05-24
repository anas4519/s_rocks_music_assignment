import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:s_rocks_music_assignment/screens/home/home_page.dart';
import 'package:s_rocks_music_assignment/screens/news/news_page.dart';
import 'package:s_rocks_music_assignment/screens/projects/projects_page.dart';
import 'package:s_rocks_music_assignment/screens/trackbox/trackbox_page.dart';
import 'package:s_rocks_music_assignment/viewmodels/main_page_viewmodel.dart';
import 'package:s_rocks_music_assignment/widgets/home_icon.dart';
import 'package:s_rocks_music_assignment/widgets/svg_icon.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Widget> pages = [
    const HomePage(),
    const NewsPage(),
    const TrackboxPage(),
    const ProjectsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<MainPageViewModel>(
      builder: (context, viewModel, child) {
        return Scaffold(
          body: IndexedStack(
            index: viewModel.currentIndex,
            children: pages,
          ),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
                color: Color(0xFF18171C),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                border: Border(top: BorderSide(color: Colors.grey[800]!))),
            child: SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                        onTap: () => viewModel.setCurrentIndex(0),
                        child:
                            HomeIcon(isSelected: viewModel.currentIndex == 0)),
                    GestureDetector(
                        onTap: () => viewModel.setCurrentIndex(1),
                        child: SvgIcon(
                          path: 'assets/icons/news_icon.svg',
                          isSelected: viewModel.currentIndex == 1,
                          title: 'News',
                        )),
                    GestureDetector(
                      onTap: () => viewModel.setCurrentIndex(2),
                      child: SvgIcon(
                        path: 'assets/icons/trackbox_icon.svg',
                        isSelected: viewModel.currentIndex == 2,
                        title: 'Trackbox',
                      ),
                    ),
                    GestureDetector(
                        onTap: () => viewModel.setCurrentIndex(3),
                        child: SvgIcon(
                          path: 'assets/icons/projects_icon.svg',
                          isSelected: viewModel.currentIndex == 3,
                          title: 'Projects',
                        )),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

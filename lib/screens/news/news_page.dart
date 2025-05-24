import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:s_rocks_music_assignment/viewmodels/news_viewmodel.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<NewsViewModel>().loadNews();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<NewsViewModel>(
        builder: (context, viewModel, child) {
          if (viewModel.isLoading) {
            return Center(child: CircularProgressIndicator());
          }
          
          return Center(
            child: Text(viewModel.newsContent),
          );
        },
      ),
    );
  }
}

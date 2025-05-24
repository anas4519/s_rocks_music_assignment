import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:s_rocks_music_assignment/screens/home/widgets/red_container.dart';
import 'package:s_rocks_music_assignment/screens/home/widgets/service_tile.dart';
import 'package:s_rocks_music_assignment/viewmodels/home_viewmodel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HomeViewModel>().loadServiceTiles();
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            RedContainer(),
            SizedBox(height: screenHeight * 0.02),
            Text(
              'Hire hand-picked Pros for popular music services',
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(height: screenHeight * 0.02),
            Consumer<HomeViewModel>(
              builder: (context, viewModel, child) {
                if (viewModel.isLoading) {
                  return CircularProgressIndicator();
                }

                if (viewModel.hasError) {
                  return Column(
                    children: [
                      Text('Error: ${viewModel.errorMessage}'),
                      SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () => viewModel.refreshServiceTiles(),
                        child: Text('Retry'),
                      ),
                    ],
                  );
                }

                if (viewModel.serviceTiles.isEmpty) {
                  return Text('No services available');
                }

                return Column(
                  children: viewModel.serviceTiles
                      .map((service) => ServiceTile(
                            title: service.title,
                            description: service.subtitle,
                            imagePath: service.bgImagePath,
                            iconPath: service.iconPath,
                          ))
                      .toList(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

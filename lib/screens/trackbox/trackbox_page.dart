import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:s_rocks_music_assignment/viewmodels/trackbox_viewmodel.dart';

class TrackboxPage extends StatefulWidget {
  const TrackboxPage({super.key});

  @override
  State<TrackboxPage> createState() => _TrackboxPageState();
}

class _TrackboxPageState extends State<TrackboxPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<TrackboxViewModel>().loadTrackbox();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<TrackboxViewModel>(
        builder: (context, viewModel, child) {
          if (viewModel.isLoading) {
            return Center(child: CircularProgressIndicator());
          }
          
          return Center(
            child: Text(viewModel.trackboxContent),
          );
        },
      ),
    );
  }
}

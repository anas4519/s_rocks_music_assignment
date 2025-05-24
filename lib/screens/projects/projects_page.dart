import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:s_rocks_music_assignment/viewmodels/projects_viewmodel.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({super.key});

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ProjectsViewModel>().loadProjects();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ProjectsViewModel>(
        builder: (context, viewModel, child) {
          if (viewModel.isLoading) {
            return Center(child: CircularProgressIndicator());
          }
          
          return Center(
            child: Text(viewModel.projectsContent),
          );
        },
      ),
    );
  }
}

import 'base_viewmodel.dart';

class ProjectsViewModel extends BaseViewModel {
  String _projectsContent = 'Projects content will be loaded here';

  String get projectsContent => _projectsContent;

  void loadProjects() {
    setLoading();
    Future.delayed(Duration(seconds: 1), () {
      _projectsContent = 'Your music projects and collaborations';
      setSuccess();
    });
  }
}

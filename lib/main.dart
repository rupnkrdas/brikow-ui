import 'package:brikow/screens/add_projects_page.dart';
import 'package:brikow/screens/generate_bill_page.dart';
import 'package:brikow/screens/login_page.dart';
import 'package:brikow/screens/profile_page.dart';
import 'package:brikow/screens/project_functions_page.dart';
import 'package:brikow/screens/projects_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginPage.route,
      routes: {
        LoginPage.route: (context) => LoginPage(),
        ProjectsPage.route: (context) => ProjectsPage(),
        AddProjectsPage.route: (context) => AddProjectsPage(),
        ProjectFunctionsPage.route: (context) => ProjectFunctionsPage(),
        GenerateBillPage.route: (context) => GenerateBillPage(),
        ProfilePage.route: (context) => ProfilePage(),
      },
    );
  }
}

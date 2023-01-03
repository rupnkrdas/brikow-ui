import 'package:brikow/screens/add_projects_page.dart';
import 'package:brikow/screens/profile_page.dart';
import 'package:brikow/widgets/project_tile.dart';
import 'package:flutter/material.dart';

class ProjectsPage extends StatefulWidget {
  static String route = "ProjectsPageRoute";

  const ProjectsPage({super.key});

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 1) {
        Navigator.pushNamed(context, ProfilePage.route);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Projects",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Your Projects",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    ProjectTile(),
                    ProjectTile(),
                    ProjectTile(),
                  ],
                ),
              ),
              Material(
                child: InkWell(
                  onTap: (() {
                    Navigator.pushNamed(context, AddProjectsPage.route);
                  }),
                  child: Ink(
                    height: 48,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 2),
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 4),
                              blurRadius: 4,
                              color: Colors.grey.shade300),
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add_circle_outline,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Add Project",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.deepOrange.shade200,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.home_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: "Account",
            icon: Icon(
              Icons.account_circle_outlined,
            ),
          ),
        ],
      ),
    );
  }
}

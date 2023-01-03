import 'package:brikow/screens/project_functions_page.dart';
import 'package:brikow/widgets/item_details_tile.dart';
import 'package:brikow/widgets/project_detail_tile.dart';
import 'package:flutter/material.dart';

class AddProjectsPage extends StatefulWidget {
  static String route = "AddProjectPage";
  const AddProjectsPage({super.key});

  @override
  State<AddProjectsPage> createState() => _AddProjectsPageState();
}

class _AddProjectsPageState extends State<AddProjectsPage> {
  String withMaterialChoice = "yes";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // add project
                Text(
                  "Add Project",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),

                // project details textfields
                ProjectDetailTile(
                  icon: Icons.home_work_outlined,
                  projectName: "Project Name",
                ),
                ProjectDetailTile(
                  icon: Icons.location_on_outlined,
                  projectName: "Location",
                ),
                ProjectDetailTile(
                  icon: Icons.calendar_month_outlined,
                  projectName: "Start Date",
                ),

                // radio button option
                Row(
                  children: [
                    Text("With Material"),
                    Expanded(
                      child: RadioListTile(
                        title: Text("Yes"),
                        value: "yes",
                        groupValue: withMaterialChoice,
                        onChanged: (value) {
                          setState(() {
                            withMaterialChoice = value.toString();
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: RadioListTile(
                        title: Text("No"),
                        value: "no",
                        groupValue: withMaterialChoice,
                        onChanged: (value) {
                          setState(() {
                            withMaterialChoice = value.toString();
                          });
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),

                // items
                Text(
                  "Items",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 24,
                ),

                Column(
                  children: [
                    ItemDetailTile(),
                    ItemDetailTile(),
                    ItemDetailTile(),
                    ItemDetailTile(),
                    ItemDetailTile(),
                  ],
                ),

                Align(
                  alignment: Alignment.centerRight,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size(40, 30),
                      side: BorderSide(
                        color: Colors.deepOrange,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, ProjectFunctionsPage.route);
                    },
                    child: Text(
                      "+ Add",
                      style: TextStyle(
                        color: Colors.deepOrange,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

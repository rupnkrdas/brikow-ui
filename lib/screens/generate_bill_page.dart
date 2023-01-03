import 'package:brikow/screens/profile_page.dart';
import 'package:flutter/material.dart';

import '../widgets/project_detail_tile.dart';

class GenerateBillPage extends StatelessWidget {
  static String route = "GeneratePageRoute";
  const GenerateBillPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Generate Bill",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                ProjectDetailTile(
                  icon: Icons.manage_accounts_outlined,
                  projectName: "Title",
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Details",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                ProjectDetailTile(
                  icon: Icons.description_outlined,
                  projectName: "Description",
                ),
                ProjectDetailTile(
                  icon: Icons.short_text,
                  projectName: "Brief",
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 60,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                      ),
                      child: Center(
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(bottom: 8),
                            border: InputBorder.none,
                            hintText: "Nos",
                            hintStyle: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 60,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                      ),
                      child: Center(
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(bottom: 8),
                            border: InputBorder.none,
                            hintText: "Length",
                            hintStyle: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 60,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                      ),
                      child: Center(
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(bottom: 8),
                            border: InputBorder.none,
                            hintText: "Width",
                            hintStyle: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 60,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                      ),
                      child: Center(
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(bottom: 8),
                            border: InputBorder.none,
                            hintText: "Height",
                            hintStyle: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      alignment: Alignment.centerLeft,
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Center(
                              child: TextField(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(bottom: 8),
                                  hintText: "Unit",
                                  hintStyle: TextStyle(
                                    fontSize: 14,
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down_outlined,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Add Brief",
                        style: TextStyle(color: Colors.deepOrange[300]),
                      ),
                    ),
                    RawMaterialButton(
                      elevation: 0,
                      constraints:
                          BoxConstraints(minWidth: 120.0, minHeight: 32.0),
                      fillColor: Colors.deepOrange[200],
                      child: Text(
                        "+ Add details",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        minimumSize: Size(120, 30),
                        side: BorderSide(
                          color: Colors.deepOrange.shade300,
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Finish",
                        style: TextStyle(
                          color: Colors.deepOrange.shade300,
                        ),
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, ProfilePage.route);
                      },
                      style: OutlinedButton.styleFrom(
                        minimumSize: Size(220, 30),
                        side: BorderSide(
                          color: Colors.deepOrange.shade300,
                        ),
                      ),
                      child: Text(
                        "Save and Create new Title",
                        style: TextStyle(
                          color: Colors.deepOrange.shade300,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

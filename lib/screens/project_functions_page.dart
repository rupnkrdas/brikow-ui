import 'package:brikow/screens/generate_bill_page.dart';
import 'package:brikow/widgets/function_tile.dart';
import 'package:brikow/widgets/project_tile.dart';
import 'package:flutter/material.dart';

class ProjectFunctionsPage extends StatelessWidget {
  static String route = "ProjectFunctionsRoute";
  const ProjectFunctionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Material(
                  child: InkWell(
                    onTap: () {},
                    child: Ink(
                      width: 54,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.mode_edit_outline_outlined,
                            color: Colors.deepOrange[400],
                          ),
                          Text(
                            "Edit",
                            style: TextStyle(color: Colors.deepOrange[400]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              ProjectTile(),
              SizedBox(
                height: 20,
              ),
              Text(
                "Functions",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FuctionTile(
                      functionName: "Create Bill",
                      onTap: () {
                        Navigator.pushNamed(context, GenerateBillPage.route);
                      },
                    ),
                    FuctionTile(
                      functionName: "Employees",
                      onTap: () {},
                    ),
                    FuctionTile(
                      functionName: "Expenses",
                      onTap: () {},
                    ),
                    FuctionTile(
                      functionName: "Receiving",
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

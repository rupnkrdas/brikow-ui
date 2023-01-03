import 'package:flutter/material.dart';

import '../widgets/project_detail_tile.dart';

class ProfilePage extends StatefulWidget {
  static String route = "ProfilePageRoute";
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String gst = "registered";

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
                  "Profile",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                ProjectDetailTile(
                  icon: Icons.manage_accounts_outlined,
                  projectName: "Contractor",
                ),
                ProjectDetailTile(
                  icon: Icons.account_circle_outlined,
                  projectName: "Name",
                ),
                ProjectDetailTile(
                  icon: Icons.phone_android_rounded,
                  projectName: "Mobile Number",
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("GST"),
                    Expanded(
                      child: RadioListTile(
                        title: Text(
                          "Registered",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        value: "registered",
                        groupValue: gst,
                        onChanged: (value) {
                          setState(() {
                            gst = value.toString();
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: RadioListTile(
                        title: Text(
                          "Unregistered",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        value: "unregistered",
                        groupValue: gst,
                        onChanged: (value) {
                          setState(() {
                            gst = value.toString();
                          });
                        },
                      ),
                    ),
                  ],
                ),
                ProjectDetailTile(
                  icon: Icons.edit_note_sharp,
                  projectName: "GST Number",
                ),
                ProjectDetailTile(
                  icon: Icons.edit_note_sharp,
                  projectName: "PAN Number",
                ),
                ProjectDetailTile(
                  icon: Icons.account_balance_outlined,
                  projectName: "Firm/Company Name",
                ),
                SizedBox(
                  height: 140,
                ),
                Center(
                  child: RawMaterialButton(
                    elevation: 0,
                    constraints:
                        BoxConstraints(minWidth: 120.0, minHeight: 32.0),
                    fillColor: Colors.deepOrange[200],
                    child: Text(
                      "Save Profile",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:brikow/screens/projects_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  static String route = "LoginPageRoute";

  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: [
            // brikow image
            Container(
              height: 80,
              color: Color(0XFFF5A999),
            ),
            Container(
              width: double.infinity,
              height: 300,
              decoration: const BoxDecoration(
                  color: Color(0XFFF5A999),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                  image: DecorationImage(
                    image: AssetImage("assets/images/1.jpg"),
                    fit: BoxFit.scaleDown,
                  )),
            ),

            // brikow  logo
            SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/logo.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),

            SizedBox(
              height: 18,
            ),

            // description
            Text(
              "India's #1 Construction Billing \n and Property Management App",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 24,
            ),

            // log in or sign up
            Text(
              "Log in or sign up",
              style: TextStyle(
                color: Color(0XFF747474),
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 24,
            ),

            // enter mobile number
            Container(
              margin: EdgeInsets.symmetric(horizontal: 18.0),
              padding: EdgeInsets.symmetric(horizontal: 12),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(4, 4),
                      blurRadius: 4,
                      color: Colors.grey.shade400,
                      blurStyle: BlurStyle.normal,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    width: 1,
                    color: Colors.grey,
                  )),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "+91",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        border: InputBorder.none,
                        hintText: 'Enter Mobile Number',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 18,
            ),

            // continue
            Container(
              width: 200,
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // <-- Radius
                  ),
                  backgroundColor: Color(0xFFEFA090),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, ProjectsPage.route);
                },
                child: Text("Continue"),
              ),
            )
          ],
        ),
      ),
    );
  }
}

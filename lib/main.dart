import 'package:flutter/material.dart';
import 'package:logincreate/components/my_button.dart';
import 'package:logincreate/components/square_title.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Hello there",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.back_hand,
                  color: Colors.yellow,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Please enter your email and password to sign in.",
              style: TextStyle(
                color: Colors.white30,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Email",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Email",
                hintStyle: TextStyle(
                  color: Colors.white30,
                  fontSize: 13,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Password",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "password",
                hintStyle: TextStyle(
                  color: Colors.white30,
                  fontSize: 13,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(
                  Icons.circle,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  "Remember me",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              color: Colors.white,
              thickness: 1.5,
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "Forgot Password",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.white, // Color of the line
                    thickness: 2, // Thickness of the line
                    indent: 20, // Space from the left side
                    endIndent: 20, // Space from the right side
                  ),
                ),
                Text(
                  "or continue with",
                  style: TextStyle(color: Colors.white),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.white, // Color of the line
                    thickness: 2, // Thickness of the line
                    indent: 20, // Space from the left side
                    endIndent: 20, // Space from the right side
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //google button
                SizedBox(
                  width: 10,
                ),
                Expanded(child: SquareTitle(imagePath: 'images/google.png')),

                //apple button
                SizedBox(
                  width: 10,
                ),
                Expanded(child: SquareTitle(imagePath: 'images/apple.png')),

                SizedBox(
                  width: 10,
                ),
                //facebook button
                Expanded(child: SquareTitle(imagePath: 'images/facebook.png')),
              ],
            ),
            //Button
            Expanded(
              child: SizedBox(),
            ),
            MyButton(),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}

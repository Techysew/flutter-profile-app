import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Profile(),
    );
  }
}

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int points = 0;

  void addPoints() {
    setState(() {
      points += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage("assets/image.png"),
                    radius: 50,
                  ),
                  CircleAvatar(
                    radius: 14,
                    backgroundColor: Colors.white,
                    child: const Icon(
                      Icons.check_circle,
                      color: Colors.green,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),
            const Divider(color: Colors.black, thickness: 2),
            const SizedBox(height: 25),

            const Text(
              "Name",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text("Sewmini", style: TextStyle(fontSize: 18)),

            const SizedBox(height: 20),

            const Text(
              "Email",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            Row(
              children: const [
                Icon(Icons.email, size: 18),
                SizedBox(width: 8),
                Text("sewmini.@nsbm.ac.lk", style: TextStyle(fontSize: 18)),
              ],
            ),

            const SizedBox(height: 20),

            const Text(
              "Points",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            Row(
              children: [
                const Icon(Icons.star, color: Colors.black),
                const SizedBox(width: 8),
                Text(points.toString(), style: const TextStyle(fontSize: 18)),
              ],
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: Colors.black,
        onPressed: addPoints,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}

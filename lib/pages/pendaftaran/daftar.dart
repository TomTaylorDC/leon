import 'package:flutter/material.dart';

import 'login.dart';

class Daftar extends StatefulWidget {
  const Daftar({super.key});

  @override
  State<Daftar> createState() => _DaftarState();
}

class _DaftarState extends State<Daftar> {
  String username = "diego";
  String nama = "bima";
  String password = "brando";
  String confirmPassword = "brando";

  void register() {
    if (password != confirmPassword) {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text("Register"),
          content: Text("Password tidak sama"),
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text("Register"),
          content: Text("Berhasil daftar: $username"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              child: Text("OK"),
            )
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Register",
              style: TextStyle(
                fontSize: 42,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 30),

            Container(
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
                boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 8)],
              ),
              child: TextField(
                onChanged: (value) => username = value,
                decoration: InputDecoration(
                  hintText: "Username",
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(25),
                ),
              ),
            ),


            SizedBox(height: 15),

            Container(
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
                boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 8)],
              ),
              child: TextField(
                onChanged: (value) => username = value,
                decoration: InputDecoration(
                  hintText: "Name",
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(25),
                ),
              ),
            ),

            SizedBox(height: 15),

            Container(
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
                boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 8)],
              ),
              child: TextField(
                onChanged: (value) => username = value,
                decoration: InputDecoration(
                  hintText: "Password",
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(25),
                ),
              ),
            ),


            SizedBox(height: 15),

            Container(
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
                boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 8)],
              ),
              child: TextField(
                onChanged: (value) => username = value,
                decoration: InputDecoration(
                  hintText: "ConfirmPassword",
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(25),
                ),
              ),
            ),

            SizedBox(height: 25),

            SizedBox(
              width: 180,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => Login()),
                  );
                },
                child: Text(
                  "Daftar",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
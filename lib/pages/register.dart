import 'package:flutter/material.dart';
import 'package:loginpagetom/pages/home.dart';

//create register page

//show and hide password

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff000000),
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.white,
          size: 30,
          opacity: 1,
        ),
        title: Text(
          'Register',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                  gapPadding: 0,
                ),
                labelText: "Name",
                labelStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(Icons.person),
                contentPadding: EdgeInsets.all(10),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                      style: BorderStyle.solid,
                    ),
                    gapPadding: 0),
              ),
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                labelText: "Email",
                labelStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(Icons.email),
                contentPadding: EdgeInsets.all(10),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2,
                    style: BorderStyle.solid,
                  ),
                  gapPadding: 0,
                ),
              ),
              style: TextStyle(color: Colors.black),
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                      style: BorderStyle.solid,
                    ),
                  ),
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.black),
                  prefixIcon: Icon(Icons.lock),
                  contentPadding: EdgeInsets.all(10),
                  suffixStyle: TextStyle(color: Colors.black)),
              style: TextStyle(color: Colors.black),
              obscureText: false,
              textInputAction: TextInputAction.done,
            ),
            SizedBox(
              height: 20,
              //width: 200,
            ),
            TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 1,
                      style: BorderStyle.solid,
                    ),
                    gapPadding: 0,
                  ),
                  labelText: "Confirm Password",
                  labelStyle: TextStyle(color: Colors.black),
                  prefixIcon: Icon(Icons.lock),
                  contentPadding: EdgeInsets.all(10),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                      style: BorderStyle.solid,
                    ),
                    gapPadding: 0,
                  ),
                ),
                style: TextStyle(color: Colors.black),
                obscureText: false,
                textInputAction: TextInputAction.done),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Text(
                "Register",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

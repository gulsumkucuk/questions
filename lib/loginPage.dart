import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:questions/LoginScreen.dart';

import 'package:get/get.dart';
import 'package:questions/sizes_helpers.dart';



class loginPage_Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: displayHeight(context),
          width: displayWidth(context),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "images/que.jpg",
              ),
              fit: BoxFit.cover,

            ),
          ),
          child: Center(
            child: Container(
                margin: EdgeInsets.only(top: 50),
                child:Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 90),
                      padding: EdgeInsets.all(30),
                      decoration: BoxDecoration(
                          color: Colors.pink.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(25)
                      ),
                      child: Text(
                        "BİLGİ TESTLERİ",
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 50),
                      width: displayWidth(context) * 0.3,
                      height: displayHeight(context) * 0.2,
                      decoration: BoxDecoration(
                          color: Colors.pink.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(25)
                      ),
                      child:IconButton(
                        icon: Icon(
                          Icons.all_inclusive_rounded,
                          color: Colors.white,
                          size: 90,
                        ),

                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginScreen(),
                            ),

                          );
                        },


                      ),


                    )],
                )
            ),
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:questions/genel.dart';
import 'package:questions/information.dart';
import 'package:questions/ing.dart';

import 'package:lottie/lottie.dart';


import 'package:flutter/widgets.dart';

import 'package:questions/sizes_helpers.dart';




class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text("choose your test"),
        ),
        body: Center(
          child: Lottie.network(
            'https://assets1.lottiefiles.com/private_files/lf30_yLIteV.json',),
        ),
        drawer: Drawer(
          child: SingleChildScrollView(

            child: Column(
              children: [
                DrawerHeader(
                  child: Container(
                    height: displayHeight(context),
                    width: displayWidth(context),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "images/soruiss.jpg",
                        ),
                        fit: BoxFit.cover,

                      ),
                    ),
                  ),
                ),


                ListTile(
                    leading: Icon(
                      Icons.question_answer_outlined,
                      color: Colors.black,
                    ),
                    title: Text('A1 İNGİLİZCE'),
                    onTap: () { Navigator.of(context).push(
                        MaterialPageRoute(builder: (context)=> const Ingilizce()));
                    } ),
                ListTile(
                    leading: Icon(
                      Icons.perm_device_information,
                      color: Colors.black,
                    ),
                    title: Text('GENEL KÜLTÜR'),
                    onTap: () { Navigator.of(context).push(
                        MaterialPageRoute(builder: (context)=> const Genel()));
                    } ),
                ListTile(
                    leading: Icon(
                      Icons.question_mark,
                      color: Colors.black,
                    ),
                    title: Text('BİLGİLENDİRME'),
                    onTap: () { Navigator.of(context).push(
                        MaterialPageRoute(builder: (context)=> const Information()));
                    } ),

              ],
            ),
          ),
        ),

      ),
    );
  }







}
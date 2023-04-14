import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:questions/LoginScreen.dart';
import 'homePage.dart';






class LoginScreen extends StatefulWidget {

  @override
  _LoginScreenState createState() => _LoginScreenState();

}



class _LoginScreenState extends State<LoginScreen> {



  Widget buildEmail(){
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Email',
            style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold

            ),
          ),
          SizedBox(height: 10),
          Container(
            alignment: Alignment.centerLeft ,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0,2)
                  )
                ]
            ),
            height:60,
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              style:TextStyle(
                  color: Colors.black87

              ),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top:14),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.pink,

                  ),
                  hintText: 'Email',
                  hintStyle: TextStyle(
                      color: Colors.black38
                  )

              ),

            ),

          )
        ]
    );
  }
  Widget buildPassword(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Password',
          style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold

          ),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft ,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]
          ),
          height:60,
          child: TextField(
            obscureText: true,

            style:TextStyle(
                color: Colors.black87

            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top:14),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.pink,

                ),
                hintText: 'Şifre',
                hintStyle: TextStyle(
                    color: Colors.black38
                )
            ),
          ),

        ),


      ],
    );
  }


  Widget BuildLoginBtn(){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: RaisedButton(
          elevation: 5,
          padding: EdgeInsets.all(15),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
          ),
          color: Colors.white,
          child: Text(
            'GİRİŞ',
            style: TextStyle(
                color: Colors.pink,
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),
          ),

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
          }

      ),

    );
  }



  @override
  Widget build(BuildContext context){
    return  Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child:GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors:[
                            Color(0xFFF80380),
                            Color(0xFFEF229F),
                            Color(0xFFFFF083),
                            Color(0xFFFCE34E),



                          ]

                      )
                  ),
                  child: SingleChildScrollView(
                    physics:AlwaysScrollableScrollPhysics(),
                    padding: EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 120
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'GİRİŞ',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold

                          ),
                        ),
                        SizedBox(height: 50),
                        buildEmail(),
                        SizedBox(height: 20),
                        buildPassword(),


                        BuildLoginBtn(),

                      ],
                    ),


                  )
              ),
            ],



          ),
        ),
      ),
    );
  }

}
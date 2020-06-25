import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'home.dart';



class LoginGoogle extends StatefulWidget {
  @override
  _LoginGoogleState createState() => _LoginGoogleState();
}

class _LoginGoogleState extends State<LoginGoogle> {
//  bool isSignIn = false;
//  GoogleSignIn _googleSignIn = new GoogleSignIn();
//  FirebaseAuth _auth = FirebaseAuth.instance;
//  FirebaseUser _user;
//  @override
//  void initState() {
//    super.initState();
//    isSignIn = false;
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,

          title: Text("FPT Booking"),
          //backgroundColor: Color(),
        ),
        body: //isSignIn
//            ?
//      Center(
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              CircleAvatar(
//                backgroundImage: NetworkImage(_user.photoUrl),
//              ),
//              Text(_user.displayName),
//              OutlineButton(
//                onPressed: () {
//                  gooleSignout();
//                },
//                child: Text("Logout"),
//              )
//            ],
//          ),
//        )
//        :
             Center(
               child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
//                      SizedBox(
//                        height: 50,
//                      ),
              Image(
                image: AssetImage('assets/images/fptlogo.jpg'),
              ),
              Text("Install booking for your need", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20),),
              GoogleSignInButton(
                onPressed: () {
                  //handleSignIn();
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Home()),
                  );
                },
                darkMode: true,

              ),
            ],
          ),
        )

    );
  }
//  Future<void> handleSignIn() async {
//    GoogleSignInAccount googleSignInAccount = await _googleSignIn.signIn();
//    GoogleSignInAuthentication googleSignInAuthentication =
//    await googleSignInAccount.authentication;
//
//    AuthCredential credential = GoogleAuthProvider.getCredential(
//        idToken: googleSignInAuthentication.idToken,
//        accessToken: googleSignInAuthentication.accessToken);
//
//    AuthResult result = (await _auth.signInWithCredential(credential));
//
//    _user = result.user;
//
//    setState(() {
//      isSignIn = true;
//    });
//  }
//  Future<void> gooleSignout() async {
//    await _auth.signOut().then((onValue) {
//      _googleSignIn.signOut();
//      setState(() {
//        isSignIn = true;
//      });
//    });
//  }


}

// import 'package:efa_teacher/constants.dart';
// import 'package:efa_teacher/pages/extraInfoPage.dart';
// import 'package:efa_teacher/pages/homePage.dart';
// import 'package:efa_teacher/sidebar/sidebar_layout.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dashboard.dart';

class LoginSignup extends StatefulWidget {
  @override
  _LoginSignupState createState() => _LoginSignupState();
}

class _LoginSignupState extends State<LoginSignup> {
  var loading = false;
  var status = true;
  final phoneTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _passwordVisible = false;

  bool visible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Modi ID",
                    style: GoogleFonts.montserrat(fontSize: 30),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: CircleAvatar(
                      // backgroundImage: NetworkImage(
                      //     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMc4g58prl3gRyOTIEFqTPxeUWOTJYFL0GXg&usqp=CAU"),
                      backgroundImage: AssetImage("assets/images.png"),
                      backgroundColor: Colors.white,
                      radius: 90,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  // FlutterSwitch(
                  //   width: 160.0,
                  //   height: 55.0,
                  //   valueFontSize: 25.0,
                  //   toggleSize: 45.0,
                  //   value: status,
                  //   borderRadius: 30.0,
                  //   padding: 8.0,
                  //   showOnOff: true,
                  //   activeText: "Login",
                  //   inactiveText: "SignUp",
                  //   activeColor: kColorDarkestBlack,
                  //   inactiveColor: kColorLightBlack,
                  //   activeTextColor: Colors.white,
                  //   inactiveTextColor: Colors.white,
                  //   activeIcon: Icon(Icons.login),
                  //   inactiveIcon: Icon(Icons.account_circle),
                  //   onToggle: (val) {
                  //     setState(() {
                  //       status = val;
                  //     });
                  //   },
                  // ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 28),
                    child: TextFormField(
                      // validator: (val) {
                      //   bool emailValid = RegExp(
                      //           r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      //       .hasMatch(val);
                      //   if (emailValid) return null;
                      //   return 'Please Enter a correct email';
                      // },
                      controller: phoneTextController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Enter Aadhaar number',
                        labelStyle:
                            GoogleFonts.montserrat(textStyle: TextStyle(color: Colors.black)),
                        border:
                            OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
                        prefixIcon: Icon(
                          Icons.keyboard,
                          color: Colors.black,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(50))),
                      ),
                    ),
                  ),
                  if (visible)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 0),
                      child: TextFormField(
                        // obscureText: !_passwordVisible,
                        // validator: (val) {
                        //   if (val.length < 6) {
                        //     return 'Please enter a longer password';
                        //   }
                        //   return null;
                        // },
                        controller: passwordTextController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelStyle:
                              GoogleFonts.montserrat(textStyle: TextStyle(color: Colors.black)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          labelText: 'Enter OTP',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(50))),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.black,
                          ),
                          // suffixIcon: IconButton(
                          //   icon: Icon(
                          //     // Based on passwordVisible state choose the icon
                          //     _passwordVisible ? Icons.visibility : Icons.visibility_off,
                          //     color: Colors.black,
                          //   ),
                          //   onPressed: () {
                          //     // Update the state i.e. toggle the state of passwordVisible variable
                          //     setState(() {
                          //       _passwordVisible = !_passwordVisible;
                          //     });
                          //   },
                          // ),
                        ),
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      child: Text(""),
                      alignment: Alignment(0.7, 0),
                    ),
                  ),
                  if (status)
                    GestureDetector(
                      // onTap: login,
                      onTap: () {
                        if (!visible) {
                          visible = true;
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("OTP sent"),
                          )); //TODO: Replace with toast
                          setState(() {});
                        } else {
                          Navigator.pushReplacement(
                              context, MaterialPageRoute(builder: (context) => Dashboard()));
                        }
                      },
                      child: Container(
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          color: Colors.black,
                        ),
                        margin: EdgeInsets.all(24),
                        padding: EdgeInsets.all(12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // Padding(
                            //   padding: const EdgeInsets.all(2.0),
                            //   child: Icon(
                            //     Icons.login,
                            //     color: Colors.white,
                            //     size: 25,
                            //   ),
                            // ),
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(
                                (!visible) ? "Verify" : "Submit OTP",
                                style: TextStyle(color: Colors.white, fontSize: 20),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  if (!status)
                    GestureDetector(
                      onTap: signUp,
                      child: Container(
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          color: Colors.black,
                        ),
                        margin: EdgeInsets.all(24),
                        padding: EdgeInsets.all(12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Icon(
                                Icons.account_circle,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(
                                "Signup",
                                style: TextStyle(color: Colors.white, fontSize: 20),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
            // if (loading)
            //   Container(
            //     height: MediaQuery.of(context).size.height,
            //     width: MediaQuery.of(context).size.width,
            //     color: Color(0xA1FFFFFF),
            //     child: Center(
            //       child: CircularProgressIndicator(
            //           valueColor: new AlwaysStoppedAnimation<Color>(Colors.yellow)),
            //     ),
            //   )
          ],
        ),
      ),
    );
  }

  void login() {
    // var email = emailTextController.text.trim();
    // var password = passwordTextController.text.trim();
    // if (_formKey.currentState.validate()) {
    //   setState(() {
    //     loading = true;
    //   });
    //   FirebaseAuth.instance
    //       .signInWithEmailAndPassword(email: email, password: password)
    //       .then((value) => {
    //             setState(() {
    //               loading = false;
    //             }),
    //             Navigator.pushReplacement(
    //                 context,
    //                 MaterialPageRoute(
    //                     builder: (context) => FirebaseAuth.instance.currentUser.displayName == null
    //                         ? ExtraInfoPage()
    //                         : SidebarLayout(
    //                             openPage: HomePage(),
    //                           ))),
    //           })
    //       .catchError((err) => {
    //             print(err.toString()),
    //             ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    //                 content:
    //                     Text('Please enter valid credentials or check your internet connection'))),
    //             setState(() {
    //               loading = false;
    //             })
    //           });
    // }
  }

  void signUp() {
    //   var email = emailTextController.text.trim();
    //   var password = passwordTextController.text.trim();
    //   if (_formKey.currentState.validate()) {
    //     setState(() {
    //       loading = true;
    //     });
    //     FirebaseAuth.instance
    //         .createUserWithEmailAndPassword(email: email, password: password)
    //         .then((value) => {
    //               setState(() {
    //                 loading = false;
    //               }),
    //               Navigator.pushReplacement(
    //                   context, MaterialPageRoute(builder: (context) => ExtraInfoPage())),
    //             })
    //         .catchError((err) => {
    //               print(err.toString()),
    //               ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    //                   content:
    //                       Text('Please enter valid credentials or check your internet connection'))),
    //               setState(() {
    //                 loading = false;
    //               })
    //             });
    //   }
  }
}

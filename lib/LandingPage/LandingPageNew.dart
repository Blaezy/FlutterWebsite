import 'package:flutter/material.dart';

enum AuthMode { Signup, Login }

class NewLandingPage extends StatefulWidget {
  @override
  _NewLandingPageState createState() => _NewLandingPageState();
}

class _NewLandingPageState extends State<NewLandingPage> {
  bool rememberme = false;
  AuthMode _auth = AuthMode.Login;
  final _controller1 = TextEditingController();
  final _controller2 = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    _controller1.dispose();
    _controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Row(
      children: [
        if (deviceSize.width > 500)
          Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: _auth == AuthMode.Login
                    ? Image.asset(
                        "images/3094351.png",
                        fit: BoxFit.contain,
                        width: deviceSize.width * 0.4,
                        height: deviceSize.height * 0.8,
                      )
                    : Image.asset(
                        "images/2853456.png",
                        fit: BoxFit.contain,
                        width: deviceSize.width * 0.4,
                        height: deviceSize.height * 0.8,
                      ),
              )),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                SizedBox(
                  height: deviceSize.height * 0.2,
                  width: deviceSize.height * 0.2,
                  child: Image.asset(
                    "images/Profile.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Text(
                    _auth == AuthMode.Login ? "Log in" : "Sign Up",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: deviceSize.width > 800
                          ? deviceSize.width * 0.32
                          : deviceSize.width * 0.8,
                      decoration: BoxDecoration(
                          color: Color(0xFF6CA8F1),
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6.0,
                              offset: Offset(0, 2),
                            ),
                          ]),
                      height: 60,
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(top: 14.0),
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.white,
                            ),
                            hintText: "Enter Your Email",
                            hintStyle: TextStyle(color: Colors.white54)),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Password",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: deviceSize.width > 800
                          ? deviceSize.width * 0.32
                          : deviceSize.width * 0.8,
                      decoration: BoxDecoration(
                          color: Color(0xFF6CA8F1),
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6.0,
                              offset: Offset(0, 2),
                            ),
                          ]),
                      height: 60,
                      child: TextFormField(
                        controller: _controller1,
                        validator: (value) {
                          if (value.isEmpty) return "Enter Something";
                          return null;
                        },
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(top: 14.0),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.white,
                            ),
                            hintText: "Enter Your Password",
                            hintStyle: TextStyle(color: Colors.white54)),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                if (_auth == AuthMode.Signup)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Re-enter Password",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        width: deviceSize.width > 800
                            ? deviceSize.width * 0.32
                            : deviceSize.width * 0.8,
                        decoration: BoxDecoration(
                            color: Color(0xFF6CA8F1),
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 6.0,
                                offset: Offset(0, 2),
                              ),
                            ]),
                        height: 60,
                        child: TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(top: 14.0),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.white,
                              ),
                              hintText: "Confirm your Password ",
                              hintStyle: TextStyle(color: Colors.white54)),
                        ),
                      )
                    ],
                  ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: deviceSize.width > 800
                      ? deviceSize.width * 0.32
                      : deviceSize.width * 0.8,
                  alignment: Alignment.bottomRight,
                  child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: deviceSize.width > 800
                      ? deviceSize.width * 0.32
                      : deviceSize.width * 0.8,
                  alignment: Alignment.centerLeft,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Theme(
                          data: ThemeData(unselectedWidgetColor: Colors.white),
                          child: Checkbox(
                              activeColor: Colors.white,
                              checkColor: Colors.green,
                              value: rememberme,
                              onChanged: (bool value) {
                                setState(() {
                                  rememberme = value;
                                });
                              }),
                        ),
                        Text(
                          "Remember Me",
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: deviceSize.width > 800
                      ? deviceSize.width * 0.32
                      : deviceSize.width * 0.8,
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Colors.white,
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 15),
                        child: Text(
                          _auth == AuthMode.Login ? "Login" : "Sign Up",
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        _auth == AuthMode.Signup
                            ? "Already have an account"
                            : "Doesn't have a Account",
                        style: TextStyle(color: Colors.white),
                      ),
                      FlatButton(
                          onPressed: () {
                            setState(() {
                              if (_auth == AuthMode.Login)
                                _auth = AuthMode.Signup;
                              else
                                _auth = AuthMode.Login;
                            });
                          },
                          child: Text(
                            _auth == AuthMode.Signup
                                ? "Login instead"
                                : 'Sign Up ?',
                            style: TextStyle(color: Colors.greenAccent),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

import 'package:PetKonnect/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AuthWidget extends StatefulWidget {
  @override
  _AuthWidgetState createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget>
    with SingleTickerProviderStateMixin {
  Color highlightedColor = Color.fromRGBO(255, 128, 30, 1);
  Color deselectedColor = Color.fromRGBO(119, 119, 119, 1);

  Color lightGrey = Color.fromRGBO(51, 51, 51, 0.3);

  var isSignUp = true;
  AnimationController _controller;
  Animation<double> _opacityAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _opacityAnimation = Tween(
      begin: 1.0,
      end: 0.0,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      isSignUp = true;
                      _controller.reverse();
                    });
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        fontSize: 20,
                        color: isSignUp ? highlightedColor : deselectedColor,
                        fontWeight: FontWeight.w700),
                  )),
              TextButton(
                  onPressed: () {
                    setState(() {
                      isSignUp = false;
                      _controller.forward();
                    });
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: isSignUp ? deselectedColor : highlightedColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ))
            ],
          ),
          _buildUserNameRow(),
          AnimatedContainer(
              constraints: BoxConstraints(
                  minHeight: isSignUp ? 60 : 0, maxHeight: isSignUp ? 120 : 0),
              duration: Duration(milliseconds: 300),
              // curve: Curves.fastOutSlowIn,
              child: FadeTransition(
                  opacity: _opacityAnimation, child: _buildEmailRow())),
          _buildPasswordRow(),
          FadeTransition(
              opacity: _opacityAnimation, child: _buildConfirmPassword()),
          SizedBox(
            height: 20,
          ),
          _buildSubmitButton(),
          SizedBox(
            height: 20,
          ),
          isSignUp ? Text("or Sign Up With") : Text("or Login With"),
          SizedBox(
            height: 20,
          ),
          _buildSocialButtons(),
        ],
      ),
    );
  }

  Widget _buildSocialButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 2),
                      blurRadius: 6.0)
                ]),
            child: Icon(
              FontAwesomeIcons.google,
              color: Colors.grey,
            ),
          ),
        ),
        SizedBox(
          width: 25,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 2),
                      blurRadius: 6.0)
                ]),
            child: Icon(FontAwesomeIcons.facebook, color: Colors.blue),
          ),
        )
      ],
    );
  }

  Widget _buildSubmitButton() {
    return RaisedButton(
      onPressed: () {
        Navigator.of(context).popAndPushNamed(ProfileScreen.routeName);
      },
      elevation: 4,
      color: Color.fromRGBO(255, 188, 78, 1),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Text(
          "Submit",
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
      ),
    );
  }

  Widget _buildUserNameRow() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: TextFormField(
        keyboardType: TextInputType.text,
        onChanged: null,
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.person,
              color: highlightedColor,
            ),
            labelText: 'Username'),
      ),
    );
  }

  Widget _buildPasswordRow() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: TextFormField(
        keyboardType: TextInputType.text,
        onChanged: null,
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.person,
              color: highlightedColor,
            ),
            labelText: 'Password'),
      ),
    );
  }

  Widget _buildConfirmPassword() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: TextFormField(
        keyboardType: TextInputType.text,
        onChanged: null,
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.person,
              color: highlightedColor,
            ),
            labelText: 'Confirm Password'),
      ),
    );
  }

  Widget _buildEmailRow() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        onChanged: null,
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.email,
              color: highlightedColor,
            ),
            labelText: 'Email'),
      ),
    );
  }
}

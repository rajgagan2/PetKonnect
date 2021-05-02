import 'package:PetKonnect/widgets/authScreen/auth_widget.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
              maxWidth: MediaQuery.of(context).size.width),
          child: Stack(
            children: [
              Image.asset(
                "assets/images/dog.jpeg",
              ),
              Container(
                transform: Matrix4.translationValues(0, 250, 1),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
                child: AuthWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

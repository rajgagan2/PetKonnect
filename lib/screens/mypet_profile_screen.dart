import 'package:PetKonnect/widgets/profileScreen/ProfileLayoutComponents/highlights_row.dart';
import 'package:flutter/material.dart';

class MyPetProfileScreen extends StatelessWidget {
  static const routeName = "/mypet-profile";
  @override
  Widget build(BuildContext context) {
    // double statusBarHeight = MediaQuery.of(context).padding.top;
    // print(statusBarHeight);
    // const double topPadding = statusBarHeight + 20;

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Stack(children: [
                Container(
                  margin: EdgeInsets.only(bottom: 40),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    image: DecorationImage(
                      image: AssetImage("assets/images/dog.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  width: double.infinity,
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 20,
                    ),
                    child: Align(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                      alignment: Alignment.topLeft,
                    ),
                  ),
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "Pet Profile",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Card(
                    margin: EdgeInsets.symmetric(horizontal: 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    elevation: 3,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      height: 90,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Jackey",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.orange,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Cavalier King Charles",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ]),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    GridView.count(
                      padding: const EdgeInsets.all(5.0),
                      shrinkWrap: true,
                      crossAxisCount: 3,
                      childAspectRatio: 1.8 / 1.5,
                      crossAxisSpacing: 17,
                      mainAxisSpacing: 15,
                      children: [
                        _cardLayout("Type", "Dog"),
                        _cardLayout("Age", "6 months"),
                        _cardLayout("Gender", "Male"),
                        _cardLayout("Weight", "6-7 Kg"),
                        _cardLayout("Height", "10-14 Inch"),
                        _cardLayout("Color", "White"),
                      ],
                    ),
                    HighlightsRow()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _cardLayout(String title, String value) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(color: Colors.orange),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            value,
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
          ),
        ],
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    );
  }
}

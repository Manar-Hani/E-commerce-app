import 'package:e_commerce/screens/homepage.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (ctx) => HomePage()));
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Color(0xfff8f8f8),
          title: Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Color(0xff746bc9),
                  size: 35,
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (ctx) => HomePage()));
                },
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "About",
                style: TextStyle(
                  fontSize: 30,
                  color: Color(0xff746bc9),
                ),
              ),
            ],
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 27),
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: AssetImage("images/about.png"),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                width: 360,
                child: Wrap(
                  children: [
                    Text(
                      "Neru My Black Directionary,This App You Can Buy Dress Shirt Shoes Pant And Tie And Many Other Product In Cheap Price, Now Its Time Buy SomeThing",
                      style: TextStyle(fontSize: 22, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:projet_battle/widgets/text_form_widget.dart';

class SingnScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
             color: Color(0xFF0983c6),
             
              height: MediaQuery.of(context).size.height * .35,
            ),
            Container(
              height: MediaQuery.of(context).size.height * .65,
              color: Colors.white,
            )
          ],
        ),
        Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * .25,
              right: 20.0,
              left: 20.0),
          child: Container(
            height: MediaQuery.of(context).size.height * .6,
            width: MediaQuery.of(context).size.width,
            child: Card(
              color: Colors.white70,
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        "Connexion",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Montserrat"),
                      ),
                    ),

                    TextFormWidge(),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }


}

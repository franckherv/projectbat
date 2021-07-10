import 'package:flutter/material.dart';

class TextFormWidge extends StatefulWidget {
  @override
  _TextFormWidgeState createState() => _TextFormWidgeState();
}

class _TextFormWidgeState extends State<TextFormWidge> {
  final _formKey = GlobalKey<FormState>();

  void validateAndSave() {
    final form = _formKey.currentState;
    if (form!.validate()) {
      print('Form is valid');
    } else {
      print('Form is invalid');
    }
  }

  // String _email;

  // String _password;

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Expanded(
      child: ListView(children: [
        ListTile(
          title: TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              prefixIcon: Icon(Icons.person),
              labelText: 'Nom',
            ),
            validator: (value) => value!.isEmpty ? 'Non valide' : null,
          ),
        ),
        ListTile(
          title: TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              prefixIcon: Icon(Icons.lock),
              labelText: 'Mot de passe',
            ),
            obscureText: true,
            validator: (value) => value!.isEmpty ? 'Non valide' : null,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ListTile(
          title: Container(
            decoration: BoxDecoration(
              color: Color(0xFF0983c6),
              borderRadius: BorderRadius.circular(22),
            ),
            height: 50,
            child: ElevatedButton(
              onPressed: validateAndSave,
              child: Text(
                'Connexion',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF0983c6),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ),
          ),
        ),
        TextButton(onPressed: () {}, child: Text("Mot de passe oublié ?")),
        SizedBox(
          height: 10,
        ),
        Center(
            child: Row(
          children: [
            Text('Nouvel utilisation? ',
                style: TextStyle(fontSize: 18, color: Colors.black)),
            
            TextButton(onPressed: (){}, child: Text(
              "INSCRIPTION",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0983c6),
                  fontSize: 18),
            ),)
          ],
        )),
      ]),
    ));
  }
}

// input field for password

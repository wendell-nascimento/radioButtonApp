import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp4(),
  ));
}

class MyApp4 extends StatefulWidget {
  @override
  _MyApp4State createState() => _MyApp4State();
}

class _MyApp4State extends State<MyApp4> {
  String _userOptionCheck;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            RadioListTile(
              title: Text("Masculino"),
                value: "m",
                groupValue: _userOptionCheck,
                secondary: Icon(Icons.check),
                onChanged: (verify) {
                setState(() {
                  _userOptionCheck = verify;
                });
                  print(verify);
                }),
            RadioListTile(
              title: Text("Feminino"),
                value: "f",
                groupValue: _userOptionCheck,
                secondary: Icon(Icons.check),
                onChanged: (verify) {
                setState(() {
                  _userOptionCheck = verify;
                });
                  print(verify);
                }),
            RaisedButton(
                child: Text("Salvar", style: TextStyle(color: Colors.white),),
                color: Colors.deepOrange,
                onPressed: (){
                  print(_userOptionCheck);
                }),
          ],
        ),
      ),
    );
  }
}

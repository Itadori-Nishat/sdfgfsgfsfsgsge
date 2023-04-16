import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shownamefrom_reg_to_profile/UserDataProvider.dart';
import 'package:shownamefrom_reg_to_profile/ui/profilePage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String name = '';
  String email = '';
  String number = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              keyboardType: TextInputType.text,
              onChanged: (value) {
                name = value;
              },
              decoration: InputDecoration(
                  hintText: "name"
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                email = value;
              },
              decoration: InputDecoration(
                  hintText: "mail"
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                number = value;
              },
              decoration: InputDecoration(
                  hintText: "number"
              ),
            ),
          ),

          ElevatedButton(
              onPressed: (){
                context.read<UserDataProvider>().uernameInfo(name, email, number);
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
              },
              child: Text("Submit")),

        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shownamefrom_reg_to_profile/UserDataProvider.dart';
import 'package:shownamefrom_reg_to_profile/ui/homePage.dart';
import 'package:shownamefrom_reg_to_profile/ui/searchPage.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile page"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Name: ${context.watch<UserDataProvider>().name}"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Email: ${context.watch<UserDataProvider>().email}"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Phone: ${context.watch<UserDataProvider>().number}"),
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SearchPage()));
                },
                child: Text("inbox Page")),
          ],
        ),
      ),
    );
  }
}

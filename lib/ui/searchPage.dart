import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shownamefrom_reg_to_profile/UserDataProvider.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search page"),
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
          ],
        ),
      ),
    );
  }
}

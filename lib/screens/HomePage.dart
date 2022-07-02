import 'package:flutter/material.dart';
import 'package:ydit_store/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ydit Store'),
      ),
      body: Column(
        children: [],
      ),
      drawer: MyDrawer(),
    );
  }
}

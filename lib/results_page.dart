import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  static final String routeName = '/results_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CACULATOR'),
      ),
      body: Center(
        child: Text('Hello'),
      ),
    );
  }
}

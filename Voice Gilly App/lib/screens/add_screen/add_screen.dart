import 'package:flutter/material.dart';

class ImportScreen extends StatefulWidget {
  final String sdkKey =
      '406126e4c309e52ca1f4763849379e3b2e956eca572e1d8b807a3e2338fdd0dc/stage';

  ImportScreen({Key key}) : super(key: key);

  @override
  _ImportScreenState createState() => _ImportScreenState();
}

class _ImportScreenState extends State<ImportScreen> {
  Color color1 = Color.fromRGBO(255, 241, 213, 1);
  Color color2 = Color.fromRGBO(232, 235, 255, 1);
  String ttext = '';
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Import"),
            ),
          ),
          Text(ttext),
        ],
      ),
    );
  }
}

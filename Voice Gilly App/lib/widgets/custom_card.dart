import 'package:flutter/material.dart';

final europeanCountries = [
  'Email',
  'Compress',
  'Duplicate',
  'New Folder with Selection',
  'Convert to PDF',
  'Merge',
  'Create Text',
];

Widget customMenu(BuildContext context) {
  return Stack(
    alignment: Alignment.bottomCenter,
    children: [
      Container(
        // width: double.infinity,
        child: Card(
          child: ListView.builder(
            itemCount: europeanCountries.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(europeanCountries[index]),
              );
            },
          ),
        ),
      )
    ],
  );
}

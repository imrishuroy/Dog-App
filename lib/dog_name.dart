import 'package:flutter/material.dart';
import 'package:flutter_practice_app/screens/dog_detail.dart';

class DogName extends StatelessWidget {
  final String dogName;

  const DogName(
    this.dogName,
  );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DecoratedBox(
        decoration: BoxDecoration(color: Colors.greenAccent),
        child: FlatButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DogDetails.dogName(
                    name: dogName,
                  ),
                ));
          },
          child: Text(
            dogName,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
        ),
      ),
    );
  }
}

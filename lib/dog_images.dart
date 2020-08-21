import 'package:flutter/material.dart';

class DogImage extends StatelessWidget {
  final String dogUrl;
  DogImage(this.dogUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.network(
          dogUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

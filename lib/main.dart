import 'package:flutter/material.dart';
import 'package:flutter_practice_app/dog_images.dart';

import './dog_name.dart';

void main() => runApp(DogApp());

class DogApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dog App',
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Dog App'),
          ),
          body: ListView(
//            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DogImage(
                  'https://sixteenbrains.com/wp-content/uploads/2020/08/poodle-1.jpg'),
              DogName('Poodle'),
              SizedBox(
                height: 10,
              ),
              DogImage(
                  'https://sixteenbrains.com/wp-content/uploads/2020/08/bulldog.jpg'),
              DogName('Bulldog'),
              SizedBox(
                height: 10,
              ),
              DogImage(
                  'https://sixteenbrains.com/wp-content/uploads/2020/08/german-960x999.jpg'),
              DogName('German Shepherd'),
              SizedBox(
                height: 10,
              ),
              DogImage(
                  'https://sixteenbrains.com/wp-content/uploads/2020/08/australian-960x540.jpg'),
              DogName('Australian Terrier'),
              SizedBox(
                height: 10,
              ),
              DogImage(
                  'https://sixteenbrains.com/wp-content/uploads/2020/08/american.jpg'),
              DogName('American Eskimo'),
              SizedBox(
                height: 16,
              ),
              Center(
                child: Text(
                  'No Item Found :(',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

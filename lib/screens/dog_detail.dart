import 'package:flutter/material.dart';

class DogDetails extends StatelessWidget {
  final String name;
  final String url;

//
//  DogDetails(
//    this.name,
//  );
  DogDetails.dogName({this.url, this.name});

  String dogImage() {
    if (name == 'Poodle') {
      return 'https://sixteenbrains.com/wp-content/uploads/2020/08/poodle-1.jpg';
    } else if (name == 'Bulldog') {
      return 'https://sixteenbrains.com/wp-content/uploads/2020/08/bulldog.jpg';
    } else if (name == 'German Shepherd') {
      return 'https://sixteenbrains.com/wp-content/uploads/2020/08/german-960x999.jpg';
    } else if (name == 'Australian Terrier') {
      return 'https://sixteenbrains.com/wp-content/uploads/2020/08/australian-960x540.jpg';
    } else {
      return 'https://sixteenbrains.com/wp-content/uploads/2020/08/american.jpg';
    }
  }

  String dogDiscription() {
    if (name == 'Poodle') {
      return 'The poodle is a breed that has been present in Europe for centuries in some form or another, and it first debuted on the Continent long before heading to the British Isles let alone North America or East Asia or Australia';
    } else if (name == 'Bulldog') {
      return 'Bulldogs have characteristically wide heads and shoulders along with a pronounced mandibular prognathism. There are generally thick folds of skin on the brow; round, black, wide-set eyes; a short muzzle with characteristic folds called a rope or nose roll above the nose';
    } else if (name == 'German Shepherd') {
      return 'German Shepherds have a double coat which is close and dense with a thick undercoat. The coat is accepted in two variants: medium and long. The long-hair gene is recessive, making the long-hair variety rarer. Treatment of the long-hair variation differs across standards; they are accepted but not competed with standard coated dogs under the German and UK Kennel Clubs while they can compete with standard coated dogs, but are considered a fault in the American Kennel Club.';
    } else if (name == 'Australian Terrier') {
      return 'The Australian Terrier is descended from the rough coated type terriers brought from Great Britain to Australia in the early 19th century. The ancestral types of all of these breeds were kept to eradicate mice and rats. The Australian Terrier shares ancestors with the Cairn Terrier, Shorthaired Skye Terrier, and the Dandie Dinmont Terrier; Yorkshire Terriers and Irish Terriers were also crossed into the dog during the breed\'s development.';
    } else {
      return 'The American Eskimo Dog is a breed of companion dog, originating in Germany. The American Eskimo Dog is a member of the Spitz family. The breed\'s progenitors were German Spitz, but due to anti-German sentiment during the First World War, it was renamed \"American Eskimo Dog\".';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Dog App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Dog App'),
        ),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: [
            Image.network(
              dogImage(),
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                name,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                dogDiscription(),
                style: TextStyle(fontSize: 20, color: Colors.blueGrey),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

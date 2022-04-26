import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Add Products';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          title: Text(appTitle),
          backgroundColor: Colors.yellow,
        ),
        body: MyCustomForm(),
      ),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class. This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your Product Name',
              labelText: 'Product Name',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter a phone number',
              labelText: 'Phone',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your ProductID',
              labelText: 'Product ID',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your Price',
              labelText: 'Price',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your Stock',
              labelText: 'Stock',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your Description',
              labelText: 'Description',
            ),
          ),
          new Container(
              padding: const EdgeInsets.only(left: 200.0, top: 40.0),
              child: new RaisedButton(
                child: const Text('Submit'),
                onPressed: null,
              )),
        ],
      ),
    );
  }
}

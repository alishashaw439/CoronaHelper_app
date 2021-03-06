import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'contact.dart';
import 'contact_server.dart';
class Register extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(

      title: 'Flutter Form Demo',
      color: Color(0xFF8A3593),
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Register to receive Ration',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  Contact newContact = new Contact();
  final TextEditingController _controller = new TextEditingController();



  bool isValidPhoneNumber(String input) {
    final RegExp regex = new RegExp(r'^\(\d\d\d\)\d\d\d\-\d\d\d\d$');
    return regex.hasMatch(input);
  }

  bool isValidEmail(String input) {
    final RegExp regex = new RegExp(
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
    return regex.hasMatch(input);
  }

  void showMessage(String message, [MaterialColor color = Colors.red]) {
    _scaffoldKey.currentState.showSnackBar(
        new SnackBar(backgroundColor: color, content: new Text(message)));
  }

  void _submitForm() {
    final FormState form = _formKey.currentState;

    if (!form.validate()) {
      showMessage('Form is not valid!  Please review and correct.');
    } else {
      form.save(); //This invokes each onSaved event

      print('Form save called, newContact is now up to date...');
      print('Name: ${newContact.name}');

      print('Phone: ${newContact.phone}');
      print('Email: ${newContact.email}');

      print('========================================');
      print('Submitting to back end...');
      var contactService = new ContactService();
      contactService.createContact(newContact).then((value) =>
          showMessage('New contact created for ${value.name}!', Colors.blue));
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xFFF1CCD7),
      key: _scaffoldKey,
      appBar: new AppBar(
          backgroundColor: Color(0xFF8A3593),
          title: new Center(child: Text(widget.title),)
      ),
      body: new SafeArea(
          top: false,
          bottom: false,
          child: new Form(
              key: _formKey,
              autovalidate: true,
              child: new ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                children: <Widget>[
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.person),
                      hintText: 'Enter your first and last name',
                      labelText: 'Name',
                    ),
                    inputFormatters: [new LengthLimitingTextInputFormatter(30)],
                    validator: (val) => val.isEmpty ? 'Name is required' : null,
                    onSaved: (val) => newContact.name = val,
                  ),

                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.phone),
                      hintText: 'Enter a phone number',
                      labelText: 'Phone',
                    ),
                    keyboardType: TextInputType.phone,
                    inputFormatters: [
                      new WhitelistingTextInputFormatter(
                          new RegExp(r'^[()\d -]{1,15}$')),
                    ],
                    validator: (value) => isValidPhoneNumber(value)
                        ? null
                        : 'Phone number must be entered as (###)###-####',
                    onSaved: (val) => newContact.phone = val,
                  ),
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.email),
                      hintText: 'Enter a email address',
                      labelText: 'Email',
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) => isValidEmail(value)
                        ? null
                        : 'Please enter a valid email address',
                    onSaved: (val) => newContact.email = val,
                  ),

                  new Container(
                      padding: const EdgeInsets.only(left: 40.0, top: 20.0),
                      child: new RaisedButton(
                        child: const Text('Submit'),
                        onPressed: _submitForm,
                      )),
                ],
              ))),
    );
  }
}
import 'package:flutter/material.dart';

import '../../repository/db_connect.dart';
import '../../routes/app_routes.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final DatabaseConnection _dbConnection = DatabaseConnection();

  @override
  void initState() {
    super.initState();
    _firstNameController.addListener(_updateUserName);
    _lastNameController.addListener(_updateUserName);
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _userNameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _updateUserName() {
    setState(() {
      _userNameController.text =
          '${_firstNameController.text}${_lastNameController.text}'.trim();
    });
  }

  void _submitForm() {
    if (_firstNameController.text.isEmpty ||
        _lastNameController.text.isEmpty ||
        _passwordController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill in all fields')),
      );
      return;
    }

    _dbConnection.register(_userNameController.text, _passwordController.text);

    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('Registration successful!')));

    Navigator.pushNamed(context, AppRoutes.loginRoute);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Registration Page")),
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _firstNameController,
                decoration: InputDecoration(
                  labelText: "First name",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _lastNameController,
                decoration: InputDecoration(
                  labelText: "Last name",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _userNameController,
                readOnly: true,
                decoration: InputDecoration(
                  labelText: "Username",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(onPressed: _submitForm, child: Text('Submit')),
            ],
          ),
        ),
      ),
    );
  }
}

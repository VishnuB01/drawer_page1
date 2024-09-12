import 'package:drawer_page1/page5_column.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
// import 'package:drawer_page1/retrive_data_from_form/user_data.dart';

final _formkey = GlobalKey<FormState>();
final _nameKey = GlobalKey<FormState>();
final _passKey = GlobalKey<FormState>();
final _mailKey = GlobalKey<FormState>();
final _conPassKey = GlobalKey<FormState>();

class Page4Column extends StatefulWidget {
  const Page4Column({
    super.key,
  });

  @override
  State<Page4Column> createState() => _Page4ColumnState();
}
// Widget _bodyContent=  Center(child: Page4Column());

class _Page4ColumnState extends State<Page4Column> {
  bool passwordVisible = true;
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _conPasswordController = TextEditingController();

  String? _validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your name';
    }
    if (value.length < 3) {
      return 'Name should be more then 3 character';
    }
    return null;
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    // String pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
    // RegExp regex = RegExp(pattern);
    if (!EmailValidator.validate(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    if (value.length < 8) {
      return 'Password must be at least 8 characters long';
    }
    if (!RegExp(r'[A-Z]').hasMatch(value)) {
      return 'Password must contain at least one uppercase letter';
    }
    if (!RegExp(r'[a-z]').hasMatch(value)) {
      return 'Password must contain at least one lowercase letter';
    }
    if (!RegExp(r'[0-9]').hasMatch(value)) {
      return 'Password must contain at least one number';
    }
    if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value)) {
      return 'Password must contain at least one special character';
    }
    return null;
  }

  String? _validateConPass(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    if (value != _passwordController.text) {
      return 'Passwords do not match';
    }
    return null;
  }

  bool _isChecked = false;
  bool _isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(20, 50, 20, 0),
            child: Form(
              key: _formkey,
              child: Center(
                child: Column(
                  children: [
                    Form(
                      key: _nameKey,
                      child: TextFormField(
                        controller: _nameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          labelText: 'Name',
                          hintText: 'UserName',
                          icon: Icon(Icons.people),
                        ),
                        autocorrect: true,
                        autofocus: true,
                        validator: _validateName,
                        onChanged: (value) {
                          // _formkey.currentState!.validate();
                          _nameKey.currentState!.validate();
                        },
                      ),
                    ),
                    const SizedBox(height: 30),
                    Form(
                      key: _mailKey,
                      child: TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          labelText: 'Mail',
                          hintText: 'user@mail.com',
                          icon: Icon(Icons.mail),
                        ),
                        autocorrect: true,
                        autofocus: true,
                        validator: _validateEmail,
                        onChanged: (value) {
                          // _formkey.currentState!.validate();
                          _mailKey.currentState!.validate();
                        },
                      ),
                    ),
                    const SizedBox(height: 30),
                    Form(
                      key: _passKey,
                      child: TextFormField(
                        controller: _passwordController,
                        obscureText: passwordVisible,
                        decoration: passwordDecoration(),
                        keyboardType: TextInputType.visiblePassword,
                        textInputAction: TextInputAction.done,
                        validator: _validatePassword,
                        onChanged: (value) {
                          // _formkey.currentState!.validate();
                          _passKey.currentState!.validate();
                        },
                      ),
                    ),
                    const SizedBox(height: 30),
                    Form(
                      key: _conPassKey,
                      child: TextFormField(
                        controller: _conPasswordController,
                        obscureText: passwordVisible,
                        decoration: conformPasswordDecoration(),
                        keyboardType: TextInputType.visiblePassword,
                        textInputAction: TextInputAction.done,
                        validator: _validateConPass,
                        onChanged: (value) {
                          // _formkey.currentState!.validate();
                          _conPassKey.currentState!.validate();
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Do you wish to subscribe",style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Container(
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Switch(
                            value: _isSwitched,
                            splashRadius: 50.0,
                            onChanged: (bool value) {
                              setState(() {
                                _isSwitched = value;
                              });
                            },
                            activeColor: Colors.green,
                            inactiveThumbColor:
                                const Color.fromARGB(255, 54, 152, 244),
                            inactiveTrackColor:
                                const Color.fromARGB(255, 54, 152, 244)
                                    .withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("I agree to your terms and conditions:"),
                        Checkbox(
                          value: _isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              _isChecked = value!;
                            });
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        // MaterialPageRoute(builder: (context)=> Page5Column());
                        if (_formkey.currentState!.validate()) {
                          UserData userData = UserData(
                            name: _nameController.text,
                            email: _emailController.text,
                            password: _passwordController.text,
                            isSubscribed: _isSwitched,
                            agreedToTerms: _isChecked,
                          );

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  Page5Column(userData: userData),
                            ),
                          );
                        }
                      },
                      child: Text('Submit'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  InputDecoration passwordDecoration() {
    return InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      labelText: 'Password',
      hintText: 'Password',
      icon: const Icon(Icons.key),
      suffixIcon: IconButton(
        icon: Icon(passwordVisible ? Icons.visibility : Icons.visibility_off),
        onPressed: () {
          setState(
            () {
              passwordVisible = !passwordVisible;
            },
          );
        },
      ),
      alignLabelWithHint: false,
    );
  }

  InputDecoration conformPasswordDecoration() {
    return InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      labelText: 'Conform Password',
      hintText: 'Conform Password',
      icon: const Icon(Icons.key),
      suffixIcon: IconButton(
        icon: Icon(passwordVisible ? Icons.visibility : Icons.visibility_off),
        onPressed: () {
          setState(
            () {
              passwordVisible = !passwordVisible;
            },
          );
        },
      ),
      alignLabelWithHint: false,
    );
  }
}

class UserData {
  final String name;
  final String email;
  final String password;
  final bool isSubscribed;
  final bool agreedToTerms;

  UserData({
    required this.name,
    required this.email,
    required this.password,
    required this.isSubscribed,
    required this.agreedToTerms,
  });
}

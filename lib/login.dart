import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'colors.dart' as colors;

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  Widget _buildUsernameField() {
    return TextFormField(
      maxLength: 40,
      decoration: const InputDecoration(
        labelText: 'User name',
      ),
      maxLines: 2,
      validator: (value) {
        // the input value is automatically taken
        if (value == null || value.isEmpty) {
          return 'Please enter your usename';
        }
        return null;
      },
    );
  }

  Widget _buildPasswordField() {
    return TextFormField(
      obscureText: true,
      maxLength: 20,
      decoration: const InputDecoration(
        labelText: 'Password',
      ),
      validator: (value) {
        // the input value is automatically taken
        if (value == null || value.isEmpty) {
          return 'Please enter your password';
        }
        return null;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              colors.ColorPalette.darkBlue,
              colors.ColorPalette.blue,
            ],
            begin: FractionalOffset(0.0, 0.4),
            end: Alignment.topRight,
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
              width: MediaQuery.of(context).size.width,
              height: 250,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                        color: colors.ColorPalette.background,
                      ),
                      Expanded(child: Container()),
                      const Icon(
                        Icons.info_outline,
                        size: 20,
                        color: colors.ColorPalette.background,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 30,
                      color: colors.ColorPalette.background,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "",
                    style: TextStyle(
                      fontSize: 20,
                      color: colors.ColorPalette.background,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: colors.ColorPalette.background,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(70),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Form(
                    //  key: _formKey,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 16.0,
                        ),
                        //input fields

                        _buildUsernameField(),
                        const SizedBox(
                          height: 16.0,
                        ),
                        _buildPasswordField(),
                        const SizedBox(
                          height: 16.0,
                        ),

                        ElevatedButton(
                          onPressed: () {
                            // if (_formKey.currentState!.validate()) {
                            //   // Process the form data
                            //   // print valid form
                            // }
                          },
                          child: const Text('Login'),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        const Text(
      "Don't have an account? Sign Up",
      style: TextStyle(
        fontSize: 20,
        color: colors.ColorPalette.background,
      ),
    ),
    const SizedBox(
      height: 16.0,
    ),
    const Text(
      "Forgot your password?",
      style: TextStyle(
        fontSize: 20,
        color: colors.ColorPalette.background,
      ),
                        // const Text(
                        //   "Don't have an account? Sign Up",
                        //   style: TextStyle(
                        //     fontSize: 20,
                        //     color: colors.ColorPalette.background,
                        //   ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

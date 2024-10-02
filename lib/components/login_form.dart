import 'package:flutter/material.dart';
import '../utils/config.dart';
import 'package:fingarax_doc/components/button.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  bool obsecurePass = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background Image
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/fingarabg.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        // Login Form
        Center(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  // Email field
                  TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Config.primaryColor,
                    decoration: InputDecoration(
                      hintText: 'Email Address',
                      labelText: 'Email',
                      alignLabelWithHint: true,
                      prefixIcon: Icon(Icons.email_outlined),
                      prefixIconColor: Config.primaryColor,
                    ),
                  ),
                  Config.spaceSmall,
                  // Password field
                  TextFormField(
                    controller: _passController,
                    keyboardType: TextInputType.visiblePassword,
                    cursorColor: Config.primaryColor,
                    obscureText: obsecurePass,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      labelText: 'Password',
                      alignLabelWithHint: true,
                      prefixIcon: const Icon(Icons.lock_outline),
                      prefixIconColor: Config.primaryColor,
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            obsecurePass = !obsecurePass;
                          });
                        },
                        icon: obsecurePass
                            ? const Icon(
                          Icons.visibility_off_outlined,
                          color: Colors.black38,
                        )
                            : const Icon(
                          Icons.visibility_outlined,
                          color: Config.primaryColor,
                        ),
                      ),
                    ),
                  ),
                  Config.spaceSmall,
                  Button(
                    width: double.infinity,
                    title: 'Sign in',
                    onPressed: () {
                      Navigator.of(context).pushNamed('main');
                    },
                    disable: false,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

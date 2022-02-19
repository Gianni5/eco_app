import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController reenterController = TextEditingController();

  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: const Text('Login'),
        ),
        body: Center(
          child: ListView(
            children: [
              Row(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Ink.image(
                        alignment: Alignment.topLeft,
                        height: 75,
                        width: 150,
                        image: const NetworkImage('https://via.placeholder.com/150x75'),
                        child: InkWell(
                          onTap: () {print('Logo Pressed');},
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    'Eco App',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 300),
                    child: Column(
                      children: [
                        TextField(
                          controller: usernameController,
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Enter Username',
                          ),
                        ),
                        TextField(
                          obscureText: _isObscure,
                          controller: passwordController,
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  icon: Icon(
                                      _isObscure ? Icons.visibility : Icons.visibility_off),
                                  onPressed: () {
                                    setState(() {
                                      _isObscure = !_isObscure;
                                    });
                                  }),
                            border: const UnderlineInputBorder(),
                            labelText: 'Enter Password',
                          ),
                        ),
                        TextField(
                          obscureText: true,
                          controller: reenterController,
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Re-enter Password',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Center(
                            child: ConstrainedBox(
                              constraints: const BoxConstraints(minWidth: 200),
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: ElevatedButton(
                                  onPressed: () {print('signup button pressed');},
                                  child: const Text(
                                    'Sign up',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }
}

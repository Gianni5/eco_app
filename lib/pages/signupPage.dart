import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('Login'),
      ),
      body: GestureDetector(
        onTap: () {FocusScope.of(context).requestFocus(FocusNode());},
        child: Container(
          alignment: Alignment.center,
          child: Column(
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
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Text(
                          'Username:',
                          style: TextStyle(fontSize: 20,),
                        ),
                        flex: 3,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: TextFormField(
                            controller: usernameController,
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: 'Enter Username',
                            ),
                          ),
                        ),
                        flex: 6,
                      )
                    ],
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Text(
                          'Password:',
                          style: TextStyle(fontSize: 20,),
                        ),
                        flex: 3,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: TextFormField(
                            controller: usernameController,
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: 'Enter Password',
                            ),
                          ),
                        ),
                        flex: 6,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 200,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: ElevatedButton(
                    onPressed: () {print('login button pressed');},
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),

    );
  }
}

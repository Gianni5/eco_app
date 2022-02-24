import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drastic on Plastic'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
      child:Container(
        color: Colors.lightGreen,
        width: 500,
        height: 600,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
              Row(
                children:[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 16),
                    child: SizedBox(
                      width: 200,
                      child: TextFormField(
                        decoration: const InputDecoration(

                          enabledBorder: UnderlineInputBorder(
                            /*borderSide: BorderSide(
                                color: Colors.white,
                                width: 1.0,
                            ),*/
                          ),
                          labelText: 'Enter your username',


                        ),
                      ),
                    ),
                  ),
                ],


              ),
              Row(
                children:[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 16),
                    child: SizedBox(
                      width: 200,
                      child: TextFormField(
                        decoration: const InputDecoration(

                          enabledBorder: UnderlineInputBorder(),
                          labelText: 'Enter your password',

                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 200,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: ElevatedButton(

                    onPressed: () {print('login button pressed');},

                    child: const Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 18),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 2),
                      child: Container(
                        width: 200,
                        alignment: Alignment.center,
                        child: const Text(
                          'or',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 200,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: ElevatedButton(

                    onPressed: () {print('Signup button pressed');},

                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                          fontSize: 18),
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
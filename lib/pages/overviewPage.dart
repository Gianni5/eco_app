import 'package:flutter/material.dart';
class Overview extends StatefulWidget {
  const Overview({ Key? key }) : super(key: key);

  @override
  State<StatefulWidget> createState() => OverviewState();
}
class OverviewState extends State<Overview>{

  var stars = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        const Icon(Icons.star, color: Colors.black),
        const Icon(Icons.star, color: Colors.black),
      ],
  );

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.green,
        title: const Text("Drastic on Plastic",style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
              width: 500,
              //padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[300],
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Material(
                  color: Colors.grey[300],
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Icon(Icons.search,color: Colors.blue),
                      Expanded(
                        child: TextField(
                          // textAlign: TextAlign.center,
                          decoration: const InputDecoration.collapsed(
                            hintText: ' Search by name or address',
                          ),
                          onChanged: (value) {

                          },
                        ),
                      ),
                      InkWell(
                        child: const Icon(Icons.mic,color: Colors.blue,),
                        onTap: () {

                        },
                      )
                    ],
                  ),
                ),
              )
          ) ,
        ),

      ),
      body:
      SingleChildScrollView(
         child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FlatButton(

                  onPressed: (){},
                  color: Colors.green ,
                  child:const Icon(Icons.bungalow,color: Colors.black),
                ),
                FlatButton(

                  onPressed: (){},
                  color: Colors.green ,
                  child: Text('review'),
                ),
              ],

            ),
            Divider(),
            Row(

              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                  width: 400.0,
                  height: 250.0,
                  color: Colors.blue,
                  padding: EdgeInsets.all(20),
                  child: Text('Place Immage/location'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:<Widget>[
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 5, 20, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      stars,
                      const Text(
                        '170 Reviews',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Roboto',
                          letterSpacing: 0.5,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(),
            Row(

              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                  width: 400.0,
                  height: 250.0,
                  color: Colors.blue,
                  padding: EdgeInsets.all(20),
                  child: Text('Place Immage/location'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:<Widget>[
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 5, 20, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      stars,
                      const Text(
                        '170 Reviews',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Roboto',
                          letterSpacing: 0.5,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(),
            Row(

              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                  width: 400.0,
                  height: 250.0,
                  color: Colors.blue,
                  padding: EdgeInsets.all(20),
                  child: Text('Place Immage/location'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:<Widget>[
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 5, 20, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      stars,
                      const Text(
                        '170 Reviews',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Roboto',
                          letterSpacing: 0.5,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(),

          ],

        ),
      ),
    );
  }
}

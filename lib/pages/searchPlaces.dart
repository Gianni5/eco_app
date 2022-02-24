import 'package:flutter/material.dart';
class Search extends StatefulWidget {
  const Search({ Key? key }) : super(key: key);

  @override
  State<StatefulWidget> createState() => SearchState();
}  
class SearchState extends State<Search>{
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  bool value4 = false;

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
      body: Column(
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
              FlatButton(

                onPressed: (){},
                color: Colors.green ,
                child: Text('overview'),
              ),
            ],

          ),
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
              Center(child: Text('plastic type 1')),
              Checkbox(
                  activeColor: Colors.green,
                  value: value1,
                  onChanged: (value) => setState(() => this.value1 = value!),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:<Widget>[
              Center(child: Text('plastic type 2')),
              Checkbox(
                activeColor: Colors.green,
                value: value2,
                onChanged: (value) => setState(() => this.value2 = value!),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:<Widget>[
              Center(
                  child: Text('plastic type 3'),
              ),
              Checkbox(
                activeColor: Colors.green,
                value: value3,
                onChanged: (value) => setState(() => this.value3 = value!),
              ),
            ],
          ),
          Container(
            width: 200,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: ElevatedButton(
                onPressed: () {print('submit pressed');},
                child: const Text(
                  'Submit',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Container(
                margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                width: 400.0,
                height: 150.0,
                color: Colors.orange,
                padding: EdgeInsets.all(20),
                child: Text('Comments'),
              ),
            ],
          ),

        ],

      ),
    );
  }
} 

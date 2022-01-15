import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ImagePicker(),
    );
  }
}

class ImagePicker extends StatefulWidget {
  @override
  _ImagePickerState createState() => _ImagePickerState();
}

class _ImagePickerState extends State<ImagePicker> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Colors.white,
          // height: 700,
          child: ListView(
            children: [
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,0,0,0),
                child: Container(
                  color: Colors.blue[900],
                  height: 60,
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10,0,0,0),
                    child: Icon(Icons.arrow_back_sharp,color: Colors.white,size: 30,),
                  ),
                ),
              ),
              Container(
                color: Colors.grey[100],
                height: 300,
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Flexible(
                      fit: FlexFit.loose,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,20,20,5),
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Text('Locality',style:TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,0,20,5),
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Text('City',style:TextStyle(color: Colors.black54,fontSize: 15,fontWeight: FontWeight.w600)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,20,20,5),
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: Text('Furnished',style:TextStyle(color: Colors.grey[900],fontSize: 25,fontWeight: FontWeight.bold)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,0,20,5),
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: Text('Negotiable',style:TextStyle(color: Colors.black54,fontSize: 15,fontWeight: FontWeight.w600)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20,20,20,20),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text('800/month',style: TextStyle(color: Colors.grey[800],fontSize: 25,fontWeight: FontWeight.bold),),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(10,30,20,0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10,0,0,0),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text('Description:',style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w500),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15,10,10,10),
                        child: Container(
                          child: Text('The purpose of this book is to give you a comprehensive introduction to moderncompetitive programming. It is assumed that you already know the basics of programming, but previous background in algorithm design or programming contestsis not necessary. Since the book covers a wide range of topics of various difficulty,it suits both for beginners and more experienced readers.Programming contests already have a quite long history. The International',
                            overflow: TextOverflow.clip,
                           // textDirection: TextDirection.rtl,
                            textAlign: TextAlign.justify,),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.fromLTRB(10, 30, 10, 10),
              child: Container(
                color: Colors.grey[200],
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10,10,0,20),
                        child: Container(alignment: Alignment.centerLeft,child: Text('Details:',style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w500),)),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5,0,0,10),
                        child: Table(
                          children: [
                            TableRow(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(10,10,0,20),
                                  child: Text('Carpet Area:',style:TextStyle(color: Colors.black54,fontSize: 15,fontWeight: FontWeight.w600)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(10,10,0,20),
                                  child: Text('Area Provided',style:TextStyle(color: Colors.black54,fontSize: 15,fontWeight: FontWeight.w900)),
                                )
                              ]
                            ),
                            TableRow(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10,10,0,20),
                                    child: Text(':',style:TextStyle(color: Colors.black54,fontSize: 15,fontWeight: FontWeight.w600)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10,10,0,20),
                                    child: Text('Area Provided',style:TextStyle(color: Colors.black54,fontSize: 15,fontWeight: FontWeight.w900)),
                                  )
                                ]
                            ),
                            TableRow(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10,10,0,20),
                                    child: Text('Carpet Area:',style:TextStyle(color: Colors.black54,fontSize: 15,fontWeight: FontWeight.w600)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10,10,0,20),
                                    child: Text('Area Provided',style:TextStyle(color: Colors.black54,fontSize: 15,fontWeight: FontWeight.w900)),
                                  )
                                ]
                            ),
                            TableRow(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10,10,0,20),
                                    child: Text('Carpet Area:',style:TextStyle(color: Colors.black54,fontSize: 15,fontWeight: FontWeight.w600)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10,10,0,20),
                                    child: Text('Area Provided',style:TextStyle(color: Colors.black54,fontSize: 15,fontWeight: FontWeight.w900)),
                                  )
                                ]
                            ),
                            TableRow(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10,10,0,20),
                                    child: Text('Carpet Area:',style:TextStyle(color: Colors.black54,fontSize: 15,fontWeight: FontWeight.w600)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10,10,0,20),
                                    child: Text('Area Provided',style:TextStyle(color: Colors.black54,fontSize: 15,fontWeight: FontWeight.w900)),
                                  )
                                ]
                            ),
                          ],
                        ),
                      ),
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

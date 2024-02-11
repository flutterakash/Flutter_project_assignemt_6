

import 'package:flutter/material.dart';

class Assignment6 extends StatefulWidget{
  const Assignment6({super.key});

  @override
  State<Assignment6> createState() => _Assignment6State();
}

class _Assignment6State extends State<Assignment6>{

  bool box1color = false;
  bool box2color = false;

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Color Box"),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              //Box1
              children : [
                Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: box1color ? Colors.red : Colors.black,
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                   //box2
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        box1color = true;
                      });
                    },
                    child: const Text("Color Box1"),
                  ),
                 ],
                ),
                const SizedBox(
                  width: 20,
                  ),
                //box2 
                  Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: box2color ? Colors.blue : Colors.black,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: (){
                        setState(() {
                          box2color = true;
                        });
                      },
                      child: const Text("color box 2"),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
              )
          ],
        ),
      ),
    );
  }
}


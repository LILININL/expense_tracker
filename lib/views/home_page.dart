import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
                        title:'Home',home: Scaffold(appBar: AppBar(
                          title: const Text('Dash bord',style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )),backgroundColor: Colors.yellow[400],
                        ),
                        body:  Center(
                              child: Column(
                                children: <Widget>[Container(color: Colors.yellow[700],height: 100,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Container(child: const Text('Expenses'),color: Colors.red,height: double.infinity),
                                    Container(child: const Text('income'),color: Colors.green,height: double.infinity),
                                    Container(child: const Text('Balance'),color: Colors.blue,height: double.infinity),
                                  ]
                                )
                                )]
                              )
                        ))
    );
  }
}

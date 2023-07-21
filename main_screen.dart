import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double result = 0.0;
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'curreny converter',
            textAlign: TextAlign.center,
          ),
          elevation: 20.0,
          backgroundColor: Colors.teal[300],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text(
                result.toString(),
                style: const TextStyle(
                  fontSize: 55,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextField(
                  controller: _textEditingController,
                  keyboardType: const TextInputType.numberWithOptions(),
                  decoration: InputDecoration(
                    hintText: 'Enter value in USD',
                    prefixIcon: const Icon(Icons.currency_exchange),
                    prefixIconColor: Colors.black,
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: const BorderSide(),
                    ),
                  ),
                ),
              ),
              CupertinoButton(
                onPressed: () {
                  result = double.parse(_textEditingController.text * 82);
                  setState(() {
                    
                  });
                },
                color: Colors.black,
                
                padding:
                    const EdgeInsets.only(left: 5, right: 5, top: 2, bottom: 2),
                child: const Text('Submit'),
              ),
            ],
          ),
        ));
  }
}

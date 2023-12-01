import 'package:flutter/material.dart';
import 'FirstPage.dart';

class SecondPage extends StatefulWidget {

  String? name;

  SecondPage({ this.name});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text("Second Page"),
          automaticallyImplyLeading: false,
          leading: Icon(Icons.diamond_rounded)
      ),
      body: ListView(
          padding: const EdgeInsets.all(20),
          children: [

            Image.network(
              'https://th.bing.com/th/id/R.f6b55e758c1052b7ef8d97d152b3d7fa?rik=0vNI%2f7%2bk3TILAw&riu=http%3a%2f%2fdata.photofunky.net%2foutput%2fimage%2fa%2f3%2fb%2f2%2fa3b297%2fphotofunky.gif&ehk=CM6Y1U2Jw6h1rJakLPpJsDIH2xSMjqAEcl6bm6DrIJg%3d&risl=&pid=ImgRaw&r=0', // Replace with the actual URL to your image
              width: 200, // Adjust the width as needed
              height: 200, // Adjust the height as needed
              fit: BoxFit.contain, // Adjust the fit property as needed
            ),

            const SizedBox(height: 20),

            Text("Welcome ${widget.name}",
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text("Go Back To First Page"))
          ]
      ),
    );
  }
}
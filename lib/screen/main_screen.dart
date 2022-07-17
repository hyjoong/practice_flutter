import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MainScreen extends StatelessWidget {
   const MainScreen({Key? key}) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.orange,
         title: Text('Henry flutter'),

       ),
       body: Center(
         child: WebView(
           initialUrl: 'https://blog.codefactory.ai',
         ),
       ),
     );
   }
 }
 
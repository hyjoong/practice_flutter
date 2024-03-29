import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MainScreen extends StatelessWidget {

   WebViewController? controller;
   final homeUrl = 'https://blog.codefactory.ai';

   MainScreen({Key? key}) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.orange,
         title: Text('Henry flutter'),
         centerTitle: true,
         actions: [
           IconButton(onPressed: (){
             if(controller == null) {
               return;
             }
             controller!.loadUrl(homeUrl);
           },
               icon: Icon(
                Icons.home,
           ))
         ],
       ),
       body: WebView(
         onWebViewCreated: (WebViewController controller){
           this.controller = controller;
         },
         initialUrl: homeUrl,
         javascriptMode: JavascriptMode.unrestricted,
       ),
     );
   }
 }
 
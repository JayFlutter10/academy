import 'package:flutter/material.dart';
import 'package:flutter_application_1/Support/Views/chat_view.dart';

import '../../academy/view/certificate_view.dart';

class Support extends StatefulWidget {
  const Support({super.key});

  @override
  State<Support> createState() => _SupportState();
}

class _SupportState extends State<Support> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Support'),
      ),
      body: Column(

        children: [
          customContainer(bRadius: 12,height: 200,width: 200,child: Center(child: Text('Image here'))),

          Container(padding: EdgeInsets.all(20), child: Text(textAlign: TextAlign.center,"Your query is not covered in our FAQs, please feel free to reach out to us directly for support. We're here to assist you!",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _supportColumn(
                icon:Icons.wechat_outlined,
                text: 'Chat with us',
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatView()));
                }
              ),
              _supportColumn(
                  icon:Icons.call,
                  text: 'Phone Support',
                  onTap: (){
                  }
              ),
              _supportColumn(
                  icon:Icons.email_rounded,
                  text: 'Email Support',
                  onTap: (){
                  }
              ),
            ],
          )
        ],
      ),
    );
  }
}

Widget _supportColumn({IconData? icon, String? text, VoidCallback? onTap}){
  return Container(
    margin: EdgeInsets.all(8),
    padding: EdgeInsets.all(5),
    decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(10)
    ),
    child: InkWell(
      
      onTap: onTap,
      child: Column(
        children: [
          Icon(icon,size: 40,color: Color.fromRGBO(0,84,182, 1),),
          Text(text!,style: TextStyle(fontSize: 14,color: Colors.black87),),
        ],
      ),
    ),
  );
}
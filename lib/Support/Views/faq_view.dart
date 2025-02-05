import 'package:flutter/material.dart';
import 'package:flutter_application_1/Support/Views/support.dart';
import 'package:flutter_application_1/academy/widgets/text_field_custom%20.dart';

class FaqView extends StatelessWidget {
   FaqView({super.key});
final List<dynamic> data=[
  {
    'Ques':'1. How can I reset my password?',
    'Ans':'To reset your password:\n1.Click on the "Forgot Password" link on the login page.\n2.Enter the email address associated with your account.\n3.Check your email inbox for a password reset link.\n4.Follow the instructions in the email to create a new password.\nIf you don’t receive the email within a few minutes, check your spam folder or contact support for assistance.'
  },
  {
    'Ques':'2. How can I contact customer support?',
    'Ans':'You can contact customer support in the following ways:\nEmail:Send us an email at support@example.com.Live \nChat: Use the chat feature on our website (available 24/7).\nPhone: Call our customer service team at 1-800-123-4567 during business hours.\nOur team is here to assist you with any issues or questions you may have!'
  },
  {
    'Ques':'3. How can I get help with an issue?',
        'Ans':'You can get help by:\nVisiting our Help Center for articles and guides.\nContacting our Support Team through email, chat, or phone. We’re here to assist with any questions or concerns you have.'
  },
  {
    'Ques':'4.What should I do if I encounter a technical problem?',
        'Ans':''
  },
  {
    'Ques':'5.Where can I find more information about your services?',
        'Ans':''
  },
];
  @override
  Widget build(BuildContext context) {
    final double height=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Support'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          spacing: height*0.02,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFieldCustom(hint: 'Search your query',),
            Text("Common FAQs",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
            // Text(data[0]['Ques'].toString()),
            // Text(data[0]['Ans'].toString()),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.only(top: 10,),
                  itemCount: data.length,
                  itemBuilder: (context,index){
                return  Container(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  margin: EdgeInsets.all(5),
                  child: ExpansionTile(
                    childrenPadding: EdgeInsets.only(left: 10),
                    // collapsedIconColor: Colors.black,
                    // iconColor: Colors.blue,
                    showTrailingIcon: false,
                    title: Text(data[index]['Ques'],style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:16.0,),
                      child: Text(data[index]['Ans']),
                    ),
                  ],),
                );
              }),
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Support()));
            }, child: Text('data'))
          ],
        ),
      ),
    );
  }
}

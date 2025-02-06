import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {

  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    // final double height=MediaQuery.of(context).size.height;
    // final double width=MediaQuery.of(context).size.width;
    // final List<dynamic> chats=[
    //   {
    //     'welcome_message':"Hi there! 👋 Welcome to Bizbooster Support. How can we assist you today? We're here to help!",
    //     'question':'How can I reset my password?',
    //     'solution':'To reset your password:\n1.Click on the "Forgot Password" link on the login page.\n2.Enter the email address associated with your account.\n3.Check your email inbox for a password reset link.\n4.Follow the instructions in the email to create a new password.\nIf you don’t receive the email within a few minutes, check your spam folder or contact support for assistance.',
    //     'follow_up':'Hope that helps, do you need any further help?',
    //   },
    // ];
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text('Chat Box')),
      // body:
      // SingleChildScrollView(
      //   child: Column(
      //     spacing: height*0.02,
      //     mainAxisAlignment: MainAxisAlignment.end,
      //     children: [
      //       TextFieldCustom(hint: 'Search your Query'),
      //  //Message chat builder
      //  SingleChildScrollView(
      //    child: SizedBox(
      //     height: height*0.65,
      //           child: ListView.builder(
      //
      //               itemCount: chats.length,
      //               itemBuilder: (context,index){
      //                   return Expanded(
      //                     child: Column(
      //                       children: [
      //                         _messsage(width,chats[index]['welcome_message'].toString(),chats[index]['question'].toString() ),
      //                         _messsage(width,chats[index]['solution'].toString(),chats[index]['follow_up'].toString() ),
      //                         _messsage(width,chats[index]['welcome_message'].toString(),chats[index]['question'].toString() ),
      //                         _messsage(width,chats[index]['solution'].toString(),chats[index]['follow_up'].toString() ),_messsage(width,chats[index]['welcome_message'].toString(),chats[index]['question'].toString() ),
      //                         _messsage(width,chats[index]['solution'].toString(),chats[index]['follow_up'].toString() ),
      //
      //                       ],
      //                     ),
      //                   );
      //           }),
      //         ),
      //  ),
      //       Padding(
      //         padding: const EdgeInsets.symmetric(vertical:20 ,horizontal: 10),
      //         child: TextField(
      //           decoration: InputDecoration(
      //             suffix:  InkWell(onTap: (){}, child: _send()),
      //             prefixIcon: InkWell( onTap: (){}, child: Transform.rotate(angle: 700,child: Icon(Icons.attach_file))),
      //             focusedBorder: OutlineInputBorder(
      //               borderRadius: BorderRadius.circular(20),
      //               borderSide: BorderSide(color: Colors.grey),
      //             ),
      //             enabledBorder: OutlineInputBorder(
      //               borderRadius: BorderRadius.circular(20),
      //               borderSide: BorderSide(color: Colors.grey),
      //             ),
      //           ),
      //         ),
      //       ),
      //
      //     ],
      //   ),
      // ),
    );
  }
}
// Widget _send(){
//   return Container(
//     padding: EdgeInsets.only(top:8,bottom: 8),
//     width: 75,
//     decoration: BoxDecoration(
//       color: Colors.white70,
//       borderRadius: BorderRadius.circular(10)
//     ),
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Text('Send ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
//         Icon(Icons.send,size: 18,),
//       ],),
//   );
// }

// Widget _messsage(double width,String welcome,String question){
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.end,
//     children: [
//       Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(15),
//           color: Colors.white,
//         ),
//         margin: EdgeInsets.only(right: width*0.2,left: 10,top: 15),
//         padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
//         child: Text(welcome.toString(),),),
//
//       Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(15),
//           color: Colors.white,
//         ),
//         margin: EdgeInsets.only(right:  10,top: 15),
//         padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
//         child:  Text(question),
//       ),
//     ],
//   );
// }
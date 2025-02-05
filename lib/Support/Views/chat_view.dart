import 'package:flutter/material.dart';


class ChatView extends StatelessWidget {

  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    final double height=MediaQuery.of(context).size.height;
    final double width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            child: TextField(
              decoration: InputDecoration(
                suffix:  InkWell(onTap: (){}, child: _send()),
                prefixIcon: InkWell( onTap: (){}, child: Transform.rotate(angle: 700,child: Icon(Icons.attach_file))),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.grey),
                ),

              ),
            ),
          ),
          IndexedStack(
            children: [
              SizedBox(
                child: ListView.builder(itemBuilder: (context,index){

                }),
              )
            ],
          )
        ],
      ),
    );
  }
}

Widget _send(){
  return Container(
    padding: EdgeInsets.only(top:8,bottom: 8),
    width: 75,
    decoration: BoxDecoration(
      color: Colors.white70,
      borderRadius: BorderRadius.circular(10)
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Send ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
        Icon(Icons.send,size: 18,),
      ],),
  );
}

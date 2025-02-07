import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/academy/view/certificate_view.dart';

class FavouriteViewScreen extends StatelessWidget {
  const FavouriteViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double height=MediaQuery.of(context).size.height;
    final double width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(' Favorite Services ',style: TextStyle(fontSize: 16),),
            Expanded(
                child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context,index){
                  return customContainer(bRadius: 12,
                    margin: 8,
                    child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            customContainer(bRadius: 10,height: height*0.10,width: width*0.25,margin: 10,containerColor: Colors.blue.shade100),
                            Expanded(
                              child:ListTile(
                                title: Text('Lorem Ipsum'),
                                subtitle: Text('Lorem ipsum dolor sit amet, adipiscing elit.'),
                                trailing:
                                InkWell(
                                    onTap: (){
                                      showDialog(context: context, builder: (BuildContext context)=>AlertDialog(
                                        actions: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              OutlinedButton(
                                                  style: OutlinedButton.styleFrom(shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(10),
                                                      side: BorderSide(color: Color.fromRGBO(0, 80,157 , 1))
                                                  ),)
                                                  ,onPressed: (){
                                                Navigator.pop(context);
                                              }, child: Text('No',style: TextStyle(fontSize: 16,color: Color.fromRGBO(0, 80,157 , 1),fontWeight: FontWeight.bold))),
                                              ElevatedButton(
                                                  style: ElevatedButton.styleFrom(
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(10)
                                                      ),
                                                      elevation: 0,
                                                      backgroundColor: Color.fromRGBO(0, 80,157 , 1)
                                                  ),
                                                  onPressed: (){
                                                      showDialog(context: context, builder: (context)=>AlertDialog(
                                                        titlePadding: EdgeInsets.all(20),
                                                        title: Text('This Service is removed from your favorites'),
                                                        titleTextStyle: TextStyle(fontSize: 16,color: Colors.black),
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.circular(10)
                                                          ),
                                                          elevation: 0,
                                                          
                                                      ));
                                                  }, child: Text(' Yes ',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),)

                                              )
                                            ],
                                          )
                                        ],
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.all(
                                                Radius.circular(10.0))),
                                        content: Text("Remove this service from your favorites"),
                                        title: Center(child: Text('Are you Sure',)),
                                        titleTextStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Color.fromRGBO(0, 80,157 , 1)),
                                      )
                                      );
                                    }, child: Icon(CupertinoIcons.heart_solid,size: 30,))
                                ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0,bottom: 8),
                          child: Text('Earn up to 4000',style: TextStyle(color: Colors.blue),),
                        )
                      ],
                    ),
                  );
                }
              )
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Video/views/video_main.dart';
import 'package:flutter_application_1/Video_Screens/widgets/module_data.dart';
import 'package:flutter_application_1/Video_Screens/widgets/text_field_custom%20.dart';

class TrainingView extends StatelessWidget {
   TrainingView({super.key});
final List<dynamic> data=[
  'Onboarding','Business','Branding / Marketing','Legal Services','Home Services','IT Services','Education','Finance Services','Franchise',
];
 final int noOfVideos=5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Modules'),
      ),
      body: Container(

        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            TextFieldCustom(),
            Expanded(
              child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context,index){
                return Row(
                  children: [
                    customContainer(
                        margin: 8,
                        bRadius: 25,
                    height: 120,width: 120
                    ),
                    Expanded(
                      child: customContainer(
                      height: 120,
                      bRadius: 25,
                      child: ListTile(
                        title: Text(data[index].toString(),style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        subtitle: Column(
                          children: [
                            Expanded(

                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.',maxLines: 2,overflow: TextOverflow.clip,),
                                    InkWell(
                                      onTap:(){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ModuleData(headline: data[index].toString(),)));
                                      },
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Icon(Icons.play_arrow_outlined),
                                          Text('$noOfVideos Videos')
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                            ),
                          ],
                        ),
                        
                      ),
                      ),
                    )
                  ],
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}

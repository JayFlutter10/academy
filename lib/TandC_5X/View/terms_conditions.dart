import 'package:flutter/material.dart';
import 'package:flutter_application_1/academy/view/certificate_view.dart';

class TermsConditions extends StatelessWidget {
   TermsConditions({super.key});
  final List<dynamic> ques=[
    {
      'Ques':'Complete your monthly target for 3 years',
      'Ans':'Franchise members must consistently meet their assigned monthly performance targets for a continuous period of 3 years. Targets will be defined and communicated in advance.',
      'Icon':'3'
    },{
      'Ques':'Achieve your Financial goal with us ',
      'Ans':'Members should set a financial goal in collaboration with our team at the time of enrollment. Progress will be monitored to ensure alignment with the set goal.',
      'Icon':'₹'

    },{
      'Ques':'If the financial goal is not achieved we will provide you 5x Return',
      'Ans':'If, despite meeting all targets as specified over the 3-year period, the financial goal is not achieved, we guarantee a return of 5 times',
      'Icon':'5'

    },{
      'Ques':'Available only for Premium Franchise members',
      'Ans':'This offer is exclusively available to Premium Franchise members. Super and non-premium members are not eligible for this guarantee.',
      'Icon':'3'

    }
  ];
  @override
  Widget build(BuildContext context) {
    final double height=MediaQuery.of(context).size.height;
    final double width=MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Terms & Conditions'),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Terms & Conditions for 5X Guarantee',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
            Expanded(

              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.only(top: 15),
                shrinkWrap: true,
                itemCount: ques.length,
                 itemBuilder: (BuildContext context, int index) {
                   return customContainer(
                     margin: 7,
                     bRadius: 2,
                     child: ExpansionTile(
                       shape:RoundedRectangleBorder(
                           side: BorderSide.none,
                           borderRadius: BorderRadius.zero
                       ) ,
                       collapsedShape: RoundedRectangleBorder(
                           side: BorderSide.none,
                           borderRadius: BorderRadius.zero
                       ),
                       childrenPadding: EdgeInsets.only(left: 10),//rgba(0, 63, 136, 1)
                       title: Row(
                         children: [
                           index!=3?customContainer(bRadius: 5, vPadding:2,hPadding: 2,child: CircleAvatar(backgroundColor:Color.fromRGBO(0, 63, 136, 1),radius: 21,child: Text(ques[index]['Icon'],style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),)):customContainer(bRadius: 5,vPadding: 2,hPadding: 2,child: CircleAvatar(backgroundColor:Color.fromRGBO(0, 63, 136, 1),radius:22,child: Icon(Icons.diamond,size: 35,color: Colors.white,))),
                           SizedBox(width: width*0.05,),
                           Expanded(child: Text(ques[index]['Ques'],style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,),maxLines: 2,)),
                         ],
                       ),
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(left:16.0,),//rgba(133, 133, 133, 1)
                           child: Text(ques[index]['Ans'],style: TextStyle(color: Color.fromRGBO(133, 133, 133, 0.8),fontWeight: FontWeight.w500),),
                         ),
                       ],
                     ),
                   );
                 }
              ),
            ),
          ],
        ),
      ),
    );
  }
}

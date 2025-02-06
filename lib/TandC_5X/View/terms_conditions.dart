import 'package:flutter/material.dart';

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

    return Scaffold(
      appBar: AppBar(
        title: Text('Terms & Conditions'),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Terms & Conditions for 5X Guarantee',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
            SizedBox(
              height: height*0.8,
              child: ListView.builder(

                padding: EdgeInsets.only(top: 10),
                shrinkWrap: true,

                itemCount: ques.length,
                 itemBuilder: (BuildContext context, int index) {
                   return ExpansionTile(
                     shape:RoundedRectangleBorder(
                         side: BorderSide.none,
                         borderRadius: BorderRadius.zero
                     ) ,
                     collapsedShape: RoundedRectangleBorder(
                         side: BorderSide.none,
                         borderRadius: BorderRadius.zero
                     ),
                     childrenPadding: EdgeInsets.only(left: 10),
                     title: Row(
                       children: [
                         index!=3?CircleAvatar(child: Text(ques[index]['Icon']),):CircleAvatar(child: Icon(Icons.diamond)),
                         Expanded(child: Text(ques[index]['Ques'],style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,),maxLines: 2,)),
                       ],
                     ),
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(left:16.0,),
                         child: Text(ques[index]['Ans']),
                       ),
                     ],
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

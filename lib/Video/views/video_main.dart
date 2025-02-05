import 'package:flutter/material.dart';

class VideoMain extends StatefulWidget {
  const VideoMain({super.key});

  @override
  State<VideoMain> createState() => _VideoMainState();
}

class _VideoMainState extends State<VideoMain> {
    int _selectedIndex=0;
    int _selectedIndexTwo=0;
    int _selectedTabIndex=0;

final List<dynamic> tabData=[
  'About','Outcomes','Details','Reviews'
];
final List<dynamic> details=[
  'Analyze business processes and find solutions to existing business problems.Define your business processes, their objectives and how they flow within the organizational context.Evaluate the current business from a process view, break down the problems, and find an applicable business solution.'
  ,'Receive training from industry experts.Gain hands-on experience solving real-world job tasks.Build confidence using the latest tools and technologies\n\n\n'
  ,'This is a guided project for both beginners and professionals managing small to medium enterprises or working in the fields of business analysis & business process management. It provides you with the initial know-how of analyzing businesses from a process view which allows you to further develop the skill needed to create solutions to your current business problems..By the end of this project, you will be able to: analyze business processes and find solutions to existing business problems; define your business processes, their objectives and how they flow within the organizational context; identify the different process stakeholders and their roles in your business processes; and evaluate the current business from a process view, break down the problems, and find an applicable business solution.'
  ,'Reviews'
];
final List<dynamic> number=[
  '65.17','28.2','06.8','01.9','03.8'
];
  @override
  Widget build(BuildContext context) {
    final double height=MediaQuery.of(context).size.height;
    final double width=MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Horizontal Menu Bar

              _selectedIndex==1?
             //Document
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [


                  //height space
                 Column(
                    children: [
                      customContainer(bRadius: 12,
                          height: height*0.25,width: double.infinity),
                      SizedBox(
                        height: height*0.01,
                      ),
                      Text('Business Analysis & Process Management',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                      //Text
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white54

                        ),
                        child: SizedBox(
                          height: 50,
                          child: Expanded(
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: tabData.length,
                              itemBuilder: (context,index){
                                return customContainer(
                                  onTap: (){
                                    setState(() {
                                      _selectedIndexTwo=index;
                                    });
                                  },
                                  bRadius: 7,
                                  margin:10,
                                  vPadding: 3,
                                  hPadding: 9,
                                  containerColor:  _selectedIndexTwo==index? Colors.blue:Colors.white,
                                  child: Text(tabData[index].toString(),style: TextStyle(fontSize: 16,color
                                      :  _selectedIndexTwo==index?Colors.white:Colors.black,fontWeight: FontWeight.bold,),),
                                );
                              },
                            ),
                          ),
                        ),

                      ),
                      customContainer(bRadius: 1,
                        hPadding: 10,
                        vPadding: 10,
                        child: _selectedIndexTwo==3?
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Reviews',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                  Row(
                                    children: [
                                      Icon(Icons.star_border_sharp,color: Colors.blue,size: 20,),
                                      Text('4.4',style: TextStyle(fontSize: 16,color: Colors.blue,fontWeight: FontWeight.bold),),
                                      SizedBox(width: width*0.02,),
                                      Text('56,000 Reviews',style: TextStyle(fontSize: 12,color: Colors.grey,fontWeight: FontWeight.w500),),
                                    ],
                                  ),
                                  SizedBox(
                                    height: height*0.2,
                                    child: ListView.builder(
                                        itemCount: number.length,
                                        itemBuilder: (context,index){
                                          int indexn=6-index;
                                          return _rating(width*0.25, width*0.21, (indexn-1).toString(), number[index].toString()) ;
                                        }),
                                  ),

                                ],
                              ),
                            ),

                            Expanded(
                              child: SizedBox(
                                height: height*0.25,
                                child: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  scrollDirection: Axis.vertical,
                                  itemCount: 3,
                                  itemBuilder: (context, index) {
                                    return _customerReview();
                                  },),
                              ),
                            ),
                          ],
                        ) : Text(details[_selectedIndexTwo],style: TextStyle(fontSize: 14),maxLines: 6),
                      )
                    ],
                  ),Column(
                    children: [
                      SingleChildScrollView(
                        child: Container(
                          height: height*0.5,
                          child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                              itemCount: 3,
                              itemBuilder: (context,index){
                            return customContainer(

                              margin: 5,
                              vPadding: 8,
                              hPadding: 5,
                              bRadius: 10,
                              child: ListTile(
                                leading: CircleAvatar(radius: 25,child: Text('ST'),),
                                title: Text('Live Webinar 1'),
                                subtitle: Column(
                                  children: [
                                    Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('04-01-2024',style: TextStyle(fontSize: 11),),
                                        Text('01 PM - 02 PM',style: TextStyle(fontSize: 11,color: Color.fromRGBO(0, 63, 136, 1),),),
                                        customContainer(bRadius: 5,
                                            onTap: (){

                                            },
                                            containerColor: Color.fromRGBO(0, 63, 136, 1),
                                            hPadding: 8,
                                            vPadding: 2,
                                            child: Text('Enroll Now',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                      Text('Attend at least 3 live webinar to move forward ',style: TextStyle(fontSize: 14),),
                      Container(
                        margin: EdgeInsets.all(5),
                        height: height*0.5,
                        child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: 3,
                            itemBuilder: (context,index){
                              int reqIndex=index+1;
                              return customContainer(
                                margin: 5,
                                vPadding: 8,
                                hPadding: 0,
                                bRadius: 10,
                                child: ListTile(
                                  leading: customContainer(bRadius: 12,height: height*0.1,width: width*0.25,containerColor: Color.fromRGBO(177, 223, 233, 1),
                                  child: Center(child: Text('W1',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),),
                                  title: Text('Live Webinar $reqIndex'),
                                  subtitle: Text("Lorem ipsum dolor sit amet, consectetur...",maxLines: 1,overflow: TextOverflow.ellipsis,),
                                  trailing: Icon(Icons.check_circle_outlined,color: Color.fromRGBO(0, 63,136, 1),),
                                ),
                              );
                            }),
                      ),
                    ],
                  ),

                ],
              ):

              //AboutMain
              Column(spacing: height*0.02,
                    children: [
                      //Search Bar
                      Row(
                        spacing: width*0.1,
                        children: [
                          Text("Top Videos",style:TextStyle(fontSize: 18,fontWeight: FontWeight.w500)),
                          Expanded(
                            child: SizedBox(
                              height: height*0.06,
                              child: TextField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.search),
                                  hintText: "Search by name",
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],),
                      //Image Containers
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(child: customContainer(bRadius: 10, height: height*0.4, width: height*0.3),),
                          SizedBox(width: 10,),
                          Expanded(
                            child: customContainer(
                                bRadius: 10,
                                height: height*0.4,
                                width: height*0.3
                            ),
                          ),
                        ],
                      ),
                      //Stack
                      Column(
                        spacing: 10,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Recommended',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500)),
                          _stackCustom(),
                        ],
                      ),
                    ],
                  ),
              //Const Every Page
              _selectedTabIndex==0?Text("Next Videos",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),):Container(),
              _selectedTabIndex==0?Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 2),
                    height: height*0.5,
                    child: ListView.builder(
                        itemCount:7,
                        itemBuilder: (context,index){
                      return _videos();
                    }),
                  ),
                  Center(child: Text("Complete all the videos to unlock your documents ",style: TextStyle(fontSize: 14,decoration: TextDecoration.underline),)),
                  Center(child: Text("Your Progress ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)),
                ],
              ):Container(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget customContainer({
  double? height,
  double? width,
  Color? containerColor,
  Color? borderColor,
  required double  bRadius,
  double? margin,
  double? hPadding,
  double? vPadding,
  String? assetsImg,
  String? networkImg,
  Color? shadowColor,
  double? shadowBlurRadius,
  Offset? shadowOffset,
  Gradient? gradient,
  Widget? child,
  VoidCallback? onTap,
}){
  return InkWell(
    onTap: onTap,
    child: Container(
      height: height,
      width: width,
      margin: EdgeInsets.all(margin ?? 0.0),
      padding: EdgeInsets.symmetric(horizontal: hPadding??0.0, vertical: vPadding ??0.0),
      decoration: BoxDecoration(
        color: gradient == null ? containerColor ?? Colors.white : null,
        gradient: gradient,
        border: Border.all(color: borderColor?? Colors.grey.shade100, width: 0.5),
        borderRadius: BorderRadius.circular(bRadius!),
        image: (networkImg != null)
            ? DecorationImage(image: NetworkImage(networkImg), fit: BoxFit.cover)
            : (assetsImg != null)
            ? DecorationImage(image: AssetImage(assetsImg), fit: BoxFit.cover)
            : null,

        boxShadow: [
          BoxShadow(
            color: shadowColor ?? Colors.grey.withOpacity(0.3),
            blurRadius: shadowBlurRadius ?? 1.0,
            offset: shadowOffset ?? const Offset(0.5, 0.5),
          ),
        ],
      ),

      child: child,
    ),
  );
}

Widget _stackCustom(){
  return Stack(
    fit: StackFit.passthrough,
    children: [
      Center(
        child: Expanded(
          child: customContainer(
            margin: 15,
            containerColor: Colors.grey[200],
            hPadding:10,
            vPadding: 12,
            bRadius: 10,

            child: Row(
              spacing: 15,
              children: [
                 customContainer(bRadius: 5,
                 child: SizedBox(
                   height: 130,width: 60,
                 )
                 ),
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top:80.0),
                      child: RichText(
                          text: TextSpan(
                                      text: 'Simplify Legal Services',
                                      style: TextStyle(color: Colors.blue[200],fontSize: 16),
                                      children: [
                      TextSpan(
                        style: TextStyle(color: Colors.black,fontSize: 16),
                        text:'\nReferrals and Get Paid with BizBooster!'
                      )
                           ]
                                    )),
                    ))
              ],
            ),
          ),
        ),
      ),//customContainer
      customContainer(
        containerColor: Colors.grey[200],
        hPadding:15,
        vPadding: 18,
        bRadius: 10,
        child: Row(
          spacing: 15,
          children: [
            customContainer(bRadius: 5,
                child: SizedBox(
                  height: 60,width: 60,
                )
            ),
            Expanded(child: RichText(text: TextSpan(
                text: 'Branding Made Profitable:',
                style: TextStyle(color: Colors.blue,fontSize: 16),
                children: [
                  TextSpan(
                      style: TextStyle(color: Colors.black,fontSize: 16),
                      text:'How to Share Marketing Leads on BizBooster'
                  )
                ]
            )))
          ],
        ),
      ),
    ],
  );
}

Widget _rating(double widthB,double widthF,String number,String percentile){
  return
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text(number,style: TextStyle(fontSize: 12)),

            Expanded(
              child: customContainer(bRadius: 10,height: 10,
                containerColor: Colors.grey,
                child: Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: customContainer(bRadius:10, containerColor: Colors.blue),
                )
              ),
            ),

            Text('$percentile %',style: TextStyle(fontSize: 12),),
          ],
        ),
      );

}

Widget _customerReview(){
  return customContainer(
    hPadding: 5,
      vPadding: 5,
      bRadius: 5,
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      CircleAvatar(
        child: Text("A"),

      ),
      Expanded(
        child: Column(
          spacing: 2,
          children: [
            Row(
              spacing: 2,
              children: [Icon(Icons.star_border),Text("4")],),
            Text('I am excited for completing this course',maxLines: 2,softWrap: true,
            overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      )
    ],
  )
  );
}

Widget _videos(){
  return Container(
    padding: EdgeInsets.only(top: 10,bottom: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            customContainer(bRadius: 10, height: 95, width: 160),
            SizedBox(width: 15,height: 15,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Tutorial 1',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                      Row(children: [
                        Icon(Icons.check_circle_outline_rounded,color: Colors.green,size: 14,),
                        Text('Completed',style: TextStyle(fontSize: 14,decoration: TextDecoration.underline,)),
                      ],),

                    ],
                  ),

                  Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit',maxLines: 3,overflow: TextOverflow.ellipsis,)
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
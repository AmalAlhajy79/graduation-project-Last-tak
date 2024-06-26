import 'package:flutter/material.dart';
import 'package:newtes1/core/ui_sizer/app_sizer.dart';


class MyAppp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Expanded(
              child: ListView.separated(
                controller: ScrollController(),
                itemBuilder: (context,index){
                  return
                    InkWell(
                      onTap: (){
                      //  controller.getCategoryIndex(index);
                      //  Get.to(()=>CategoryItem(categoryTitle: controller.categoryNameList[index],));
                      },
                      child: Container(
                        height: 150,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:Colors.purpleAccent,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: NetworkImage('https://th.bing.com/th/id/OIP.FZjYTqwgEaJWUbVVPHcckwHaE8?rs=1&pid=ImgDetMain',
                              ),
                              fit:BoxFit.cover
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 20,bottom: 10),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              'Name category',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color:Colors.white,
                                  backgroundColor: Colors.black87.withOpacity(0.4)
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                },
                separatorBuilder: (context,index){
                  return SizedBox(
                    height: 20,
                  );
                },
                itemCount: 6,
              ),
            ),
    );


  }
}

// child: Card(
//   clipBehavior: Clip.antiAlias,
//   child: Image.asset('assets/images/lock.png',fit: BoxFit.cover,),
//   ),





//
// import 'package:flutter/material.dart';
// import 'package:newtes1/core/ui_sizer/app_sizer.dart';
//
//
// class MyAppp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Rectangles List'),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//             height: 2000,
//             width: 100,
//             child: ListView.builder(
//               padding: EdgeInsets.all(10),
//
//               itemCount: 5, // عدد المستطيلات
//               itemBuilder: (context, index) {
//                 return Container(
//                   width:200 ,// 20% من عرض الشاشة
//                   height: 100, // 75% من ارتفاع الشاشة
//                   margin: EdgeInsets.all(10),
//                   decoration: BoxDecoration(
//                     color: Colors.blueGrey,
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   child: Image.network(
//                     'https://th.bing.com/th/id/OIP.FZjYTqwgEaJWUbVVPHcckwHaE8?rs=1&pid=ImgDetMain',
//                   //  width: 100.w,
//                     fit: BoxFit.cover,
//                     //  height: 150,
//                   ),
//                 );
//               },
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

/////////////////////////////////////////////////////////////////////////////

// import 'package:flutter/material.dart';
// import 'package:newtes1/core/ui_sizer/app_sizer.dart';
//
// class TESTT extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('GridView مع البطاقات'),
//         ),
//         body: Padding(
//           padding: EdgeInsets.all(5.w),
//           child: GridView.builder(
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               mainAxisSpacing: 10,
//               crossAxisSpacing: 10
//             ),
//             itemCount: 6,
//             itemBuilder: (BuildContext context, int index) {
//               return Card(
//                 child:
//                 Column(
//                   children: <Widget>[
//                     SizedBox(
//                       height: 20.w,
//                       width: 100.w,
//                       child: Image.network(
//                         'https://th.bing.com/th/id/OIP.FZjYTqwgEaJWUbVVPHcckwHaE8?rs=1&pid=ImgDetMain',
//                         width: 150,
//                         fit: BoxFit.cover,
//                         height: 150,
//                       ),
//                     ),
//                   Expanded(child: ListTile(
//                     title: Text('صورة تجريبية $index'),
//                     subtitle: Text('هذه صورة تجريبية رقم $index من الإنترنت'),
//                   ), )
//                   ],
//                 ),
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:newtes1/core/consts/app_assets.dart';
import 'package:newtes1/core/consts/app_colors.dart';
import 'package:newtes1/core/ui_sizer/app_sizer.dart';

class CardServiceDetailes extends StatelessWidget {
  const CardServiceDetailes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        // height: 190.w,
        // width: 80.w,
      decoration: BoxDecoration(
        color: AppColors.white,//AppColors.brown.withAlpha(600),
        //Color(0xD1F8B0EE).withAlpha(600),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 0.1, left: 0.1, right: 0.1),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // SizedBox(
            //   height: 25.w,
            //   width: 100.w,
            Container(
              height: 30.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
              //  color: Colors.red,
              ),
              child:
              ClipRRect(
                borderRadius: BorderRadius.all(
                     Radius.circular(10),),
                child:
                Image.network(
                  'https://th.bing.com/th/id/OIP.FZjYTqwgEaJWUbVVPHcckwHaE8?rs=1&pid=ImgDetMain',
                  width: 100.w,
                  fit: BoxFit.cover,
                  //  height: 150,
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft:Radius.circular(9),bottomRight: Radius.circular(9) ),
                  // color: Colors.red.shade50,
                ),
                child: Column(
                  children: [

                    SizedBox(
                      height: 1.w,
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                          "fffffgggg gggg hhhhh kkkkk kkkkk  uuuuuuuuuuuu  eeeeeeeeee nnnnn hhh nnnn fffflllll fffffgggg gggg hhhhh kkkkk kkkkk kkkkkkkkk lllllllllll mmmmmmm tttttttttttttt uuuuuuuuuuuu rrrrrrrrrrrrrrr eeeeeeeeee nnnnn hhh nnnn fffflllll kkkkk hhh oppppp oppp hhhh hhttt ddd aaaaa fffffffff fffffgggg gggg hhhhh kkkkk kkkkk kkkkkkkkk lllllllllll mmmmmmm tttttttttttttt uuuuuuuuuuuu rrrrrrrrrrrrrrr eeeeeeeeee nnnnn hhh nnnn fffflllll kkkkk hhh oppppp oppp hhhh hhttt ddd aaaaa fffffffff fffffgggg gggg hhhhh kkkkk kkkkk kkkkkkkkk lllllllllll mmmmmmm tttttttttttttt uuuuuuuuuuuu rrrrrrrrrrrrrrr eeeeeeeeee nnnnn hhh nnnnfffffgggg gggg hhhhh kkkkk kkkkk kkkkkkkkk lllllllllll mmmmmmm tttttttttttttt uuuuuuuuuuuu rrrrrrrrrlll kkkkk hhh oppppp oppp hhhh hhttt ddd aaaaa fffffffff  fffflllll kkkkk hhh oppppp oppp hhhh hhttt ddd aaaaa fffffffff  kkkkk hhh oppppp oppp hhhh hhttt ddd aaaaa fffffffff ....",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                              color: Colors.blueGrey.withOpacity(1),
                          )),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),

    );
  }
}

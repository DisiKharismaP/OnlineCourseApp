import 'package:flutter/material.dart';
import 'package:online_course_app/theme.dart';

class CardCourseTile extends StatelessWidget {
  final String imageCourse;
  final String titleCourse;
  final String reviewCourse;

  const CardCourseTile({required this.imageCourse, required this.titleCourse, required this.reviewCourse});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
      },
      child: Container(
        width: 180.0,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(12.0))
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 100.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imageCourse), fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(12.0), topRight :Radius.circular(12.0))
              ),
            ),
            SizedBox(height: 12.0),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      'Free',
                      style: greenTextStyle.copyWith(fontSize: 12.0, fontWeight: FontWeight.w600)
                  ),
                  SizedBox(height: 4.0),
                  Text(
                      titleCourse,
                      style: blackTextStyle.copyWith(fontSize: 12.0, fontWeight: FontWeight.w600)
                  ),
                  SizedBox(height: 7.0),
                  Container(
                    child: Row(
                      children: [
                        Image.asset('assets/images/star.png', width: 16.0, height: 16.0),
                        Image.asset('assets/images/star.png', width: 16.0, height: 16.0),
                        Image.asset('assets/images/star.png', width: 16.0, height: 16.0),
                        Image.asset('assets/images/star.png', width: 16.0, height: 16.0),
                        SizedBox(width: 4.0),
                        Text(
                            reviewCourse,
                            style: greyTextStyle.copyWith(fontSize: 12.0, fontWeight: FontWeight.w600)
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

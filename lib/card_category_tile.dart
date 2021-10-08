import 'package:flutter/material.dart';
import 'package:online_course_app/theme.dart';

class CardCategoryTile extends StatelessWidget {
  final String imageCategory;
  final String titleCategory;
  final String descCategory;

  const CardCategoryTile({required this.imageCategory, required this.titleCategory, required this.descCategory});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
      },
      child: Container(
        width: 120.0,
        height: 120.0,
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(12.0))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imageCategory),
            SizedBox(height: 17.0),
            Text(
              titleCategory,
              style: blackTextStyle.copyWith(fontSize: 12.0, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 4.0),
            Text(
              descCategory,
              style: greyTextStyle.copyWith(fontSize: 10.0, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}

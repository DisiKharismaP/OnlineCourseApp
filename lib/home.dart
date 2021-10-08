import 'package:flutter/material.dart';
import 'package:online_course_app/card_category_tile.dart';
import 'package:online_course_app/card_course_tile.dart';
import 'package:online_course_app/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  children: [
                    Image.asset('assets/images/profile.png'),
                    Spacer(),
                    Container(
                      width: 30.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(6.0))
                      ),
                      child: Image.asset(
                        'assets/images/ic_search.png'
                      ),
                    ),
                    SizedBox(width: 12.0),
                    Container(
                      width: 30.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(6.0))
                      ),
                      child: Image.asset(
                          'assets/images/ic_notification.png'
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12.0),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 24.0),
                child :
                Text(
                  'Want to study class \nWhat\'s Today',
                  style: blackTextStyle.copyWith(fontSize: 18.0, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 12.0),
              Container(
                height: 120.0,
                margin: EdgeInsets.symmetric(horizontal: 24.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CardCategoryTile(imageCategory: 'assets/images/icon_design.png', titleCategory: 'Design', descCategory: '49 Course'),
                    SizedBox(width: 12.0),
                    CardCategoryTile(imageCategory: 'assets/images/icon_softskill.png', titleCategory: 'Soft Skill', descCategory: '12 Course'),
                    SizedBox(width: 12.0),
                    CardCategoryTile(imageCategory: 'assets/images/icon_art.png', titleCategory: 'Art', descCategory: '50 Course'),
                  ],
                ),
              ),
              SizedBox(height: 24.0),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  children: [
                    Text(
                        'Popular Course',
                        style: blackTextStyle.copyWith(fontSize: 14.0, fontWeight: FontWeight.w600)
                    ),
                    Spacer(),
                    Text(
                        'Show all',
                        style: blueTextStyle.copyWith(fontSize: 10.0, fontWeight: FontWeight.w500)
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12.0),
              Container(
                height: 205.0,
                margin: EdgeInsets.symmetric(horizontal: 24.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CardCourseTile(imageCourse: 'assets/images/wireframe.png', titleCourse: 'UI Design : Wireframe\nto Visual Design', reviewCourse: '(4016)'),
                    SizedBox(width: 12.0),
                    CardCourseTile(imageCourse: 'assets/images/figma.png', titleCourse: 'UI Design : Styleguide\nwith Figma', reviewCourse: '(1055)'),
                  ],
                ),
              ),
              SizedBox(height: 24.0),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  children: [
                    Text(
                        'Articles',
                        style: blackTextStyle.copyWith(fontSize: 14.0, fontWeight: FontWeight.w600)
                    ),
                    Spacer(),
                    Text(
                        'Show all',
                        style: blueTextStyle.copyWith(fontSize: 10.0, fontWeight: FontWeight.w500)
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

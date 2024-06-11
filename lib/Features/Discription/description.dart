// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resumebuilder/data/data.dart';
import 'package:resumebuilder/Features/Discription/controller/descriptioncontroller.dart';
import 'package:resumebuilder/Features/Discription/widget/achievementwidget.dart';
import 'package:resumebuilder/Features/Discription/widget/activity.dart';

import '../../constant/customwidget.dart';

class DiscriptionPage extends StatelessWidget {
  const DiscriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    var Activitycontroller = Get.put(Activity());
    var AchievementController = Get.put(Achievement());
    return Scaffold(
        appBar: AppBar(
          title:const Text("Description"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              child: Column(
                children: [
          
                  // short discription
                  ETextFormField("Description", Data.discription, null, 10),
          
                  // achievement                
                  ETitleBar(context, "Achievement", AchievementCredentials()),
                  // list of Achievement
                  EListView(AchievementController, 'Name'),
          
          
                  // Extra curricular Activity
                  ETitleBar(context, "Extra Curricular", ClubCredentials() ),
                  // list of Activity..
                  EListView(Activitycontroller, "ClubName"),
                 
                ],
              ),
            ),
          ),
        ));
  }
}

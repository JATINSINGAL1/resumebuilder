import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProjectController extends GetxController {
  
  TextEditingController title = TextEditingController();
  TextEditingController techStack = TextEditingController();
  TextEditingController description = TextEditingController();

  var itemCount = 1.obs;
   bool _isExpanded = false;
  List project = [];
 
  add(title,techStack,description,){
    bool isExpanded=_isExpanded;
    project.add({
      "title":title,
      "techStack":techStack,
      "description":description,
      "_isExpanded":isExpanded
    });
  
    itemCount++;
  }
}

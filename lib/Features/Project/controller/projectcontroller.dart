import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProjectController extends GetxController {
  


  var itemCount = 0.obs;
   final bool _isExpanded = false;
   List project = [];
 
  add(){
  TextEditingController title = TextEditingController();
  TextEditingController techStack = TextEditingController();
  TextEditingController description = TextEditingController();
    bool isExpanded=_isExpanded;
    project.add({
      "titlecontroller":title,
      "techStackcontroller":techStack,
      "descriptioncontroller":description,
      "_isExpanded":isExpanded
    });

  }

  delete(index) {
    itemCount--;
    project.removeAt(index);
  }

 
}

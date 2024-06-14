import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SkillController extends GetxController{
  TextEditingController languages = TextEditingController();
  TextEditingController softwareDevKit = TextEditingController();
  TextEditingController other = TextEditingController();
 var itemcount = 0.obs;
  List langCollection=[];
  add(text){
    langCollection.add(text);
    itemcount++;
  }
  delete(text){
    langCollection.remove(text);
    itemcount--;
  }
}
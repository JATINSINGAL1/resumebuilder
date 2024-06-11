// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Achievement extends GetxController {
  TextEditingController year = TextEditingController();
  TextEditingController position = TextEditingController();
  TextEditingController competetion = TextEditingController();

  List collection = [];
  var itemcount = 0.obs;
  add(competetion, year, position) {
    itemcount++;
    collection.add(
        {"Name": competetion, "Year": year, "Position": position});
  }

  delete(index) {
    itemcount--;
    collection.removeAt(index);
  }
}

class Activity extends GetxController {
  TextEditingController organizationname = TextEditingController();
  TextEditingController year = TextEditingController();
  TextEditingController position = TextEditingController();

  List collection = [];
  var itemcount = 0.obs;
  add(organization, year, position) {
    itemcount++;
    collection.add(
        {"ClubName": organization, "ClubYear": year, "ClubPosition": position});
  }

  delete(index) {
    itemcount--;
    collection.removeAt(index);
  }
}


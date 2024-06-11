// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resumebuilder/Features/Discription/controller/descriptioncontroller.dart';
import '../../../constant/customwidget.dart';

// form with validation

class AchievementCredentials extends StatelessWidget {
  AchievementCredentials({
    super.key,
  });
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(Achievement());
    return SimpleDialog(
        title:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          const Text("Credentials"),
          ElevatedButton.icon(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  controller.add(controller.competetion.text,
                      controller.year.text, controller.position.text);
                }
              },
              icon: const Icon(Icons.add),
              label: const Text("ADD"))
        ]),
        children: [
          Form(
            key: _formKey,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ////////// ------------- Design remaining

                  // organization
                  ETextFormField(
                      "Competion Name", controller.competetion, null, 1),

                  // year and position
                  Row(children: [
                    Expanded(
                        child:
                            ETextFormField("Year", controller.year, null, 1)),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: ETextFormField(
                            "Position", controller.position, null, 1)),
                  ]),
                ],
              ),
            ),
          )
        ]);
  }
}

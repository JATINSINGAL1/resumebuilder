// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:resumebuilder/Features/Skills/controller/skillcontroller.dart';

import '../../constant/customwidget.dart';

class SkillPage extends StatelessWidget {
  const SkillPage({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(SkillController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Skills"),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Form(
            child: Column(
          children: [
            // languages
            ETextFormField(
                "Languages",
                controller.languages,
                IconButton(
                    onPressed: () {
                      if (controller.langCollection.indexWhere((element) {
                            return element ==
                                controller.languages.text.toString();
                          }) <
                          0) {
                        controller.add(controller.languages.text.toString());
                      } else {
                        // print("element present");
                      }
                      controller.languages.clear();
                    },
                    icon: Icon(Icons.add)),
                1),

            // display of languages      

            Obx(
              () => Visibility(
                visible: controller.itemcount.value != 0 ? true : false,
                child: SizedBox(
                  width: double.infinity,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Wrap(
                        spacing: 5,
                        runSpacing: 7,
                        children: List<Widget>.generate(
                            controller.itemcount.value, (index) {
                          return Chip(
                              onDeleted: () {
                                controller
                                    .delete(controller.langCollection[index]);
                              },
                              deleteIcon: Icon(Icons.remove),
                              label: Text(controller.langCollection[index]));
                        }),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // software packages
            TextFormField(),
            // others
            TextFormField(),
          ],
        )),
      ),
    );
  }
}

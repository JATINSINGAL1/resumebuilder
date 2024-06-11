import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:resumebuilder/Features/Project/controller/projectcontroller.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({super.key});

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

bool _isExpanded = true;

class _ProjectScreenState extends State<ProjectScreen> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ProjectController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Projects"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Obx(
            ()=> ListView.builder(
              shrinkWrap: true,
              itemCount: controller.itemCount.value,
              itemBuilder: (context, index) {
                return 
                   ExpansionPanelList(
                    expansionCallback: (panelIndex, isExpanded) {
                      setState(() {
                        _isExpanded = isExpanded;
                      });
                    },
                    children: [
                      ExpansionPanel(
                        isExpanded: _isExpanded,
                        headerBuilder: (context, isExpanded) {
                          return  Text("Project $index");
                        },
                        body: Form(
                            child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // project name
                            TextFormField(),
                            // tech stack used
                            TextFormField(),
                            // short discription
                            TextFormField(),
                            ElevatedButton(
                                onPressed: () {
                                  controller.itemCount++;
                                }, child: const Text("ADD"))
                          ],
                        )),
                      )
                    ],
                  )
                ;
              },
            ),
          ),
        ),
      ),
    );
  }
}

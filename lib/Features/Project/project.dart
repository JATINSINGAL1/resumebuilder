import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:resumebuilder/Features/Project/controller/projectcontroller.dart';

import '../../constant/customwidget.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({super.key});

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}



class _ProjectScreenState extends State<ProjectScreen> {
  var controller = Get.put(ProjectController());
 
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Projects"),
        actions: [
          IconButton(onPressed: (){
            controller.add();
            controller.itemCount++;
          }, icon: const Icon(Icons.add))
        ],
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
                   Card(
                    
                     child: ExpansionPanelList(
                      
                      expansionCallback: (panelIndex, isExpanded) {
                        setState(() {
                          controller.project[index]['_isExpanded'] = isExpanded;
                        });
                      },
                      children: [
                        ExpansionPanel(
                          backgroundColor: Colors.yellow,
                          isExpanded: controller.project[index]['_isExpanded'],
                          headerBuilder: (context, isExpanded) {
                            return  Center(child: Text("Project ${index+1}",style: const TextStyle(fontSize: 28,fontWeight: FontWeight.w500),));
                          },
                          body: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Form(
                                child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const SizedBox(height: 10,),
                                // project name
                                ETextFormField("Title", controller.project[index]['titlecontroller'],const Icon(Icons.title),1),
                                // tech stack used
                                ETextFormField("Tech Stack", controller.project[index]['techStackcontroller'],null,1),
                                // short discription
                                ETextFormField("Describe few about your Project", controller.project[index]['descriptioncontroller'],null,2),
                                Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    IconButton(onPressed: (){
                                      controller.delete(index);
                                    }, icon: const Icon(Icons.delete)),
                                    ElevatedButton(
                                        onPressed: () {
                                         
                                        }, child: const Text("ADD")),
                                  ],
                                )
                              ],
                            )),
                          ),
                        )
                      ],
                                       ),
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

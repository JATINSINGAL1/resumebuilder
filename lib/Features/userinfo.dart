import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resumebuilder/data/data.dart';

import '../constant/customwidget.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("User Info"),
        centerTitle: true,
      actions: [TextButton(onPressed: (){
        Navigator.pop(context);
      }, child: Text("Save"))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // User name
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                      child: ETextFormField(
                          "First Name", Data.first_name, SizedBox(),1)),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: ETextFormField(
                          "Last Name", Data.last_name, SizedBox(),1)),
                ],
              ),
              // Email
              ETextFormField("Email", Data.email, Icon(Icons.mail),1),
              // Phone no
              ETextFormField(
                  "Phone No", Data.phoneno, Icon(Icons.phone_iphone),1),
              // education
              TextFormField(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SkillPage extends StatelessWidget {
  const SkillPage({super.key});

  @override
  Widget build(BuildContext context) {
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
            TextFormField(),
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

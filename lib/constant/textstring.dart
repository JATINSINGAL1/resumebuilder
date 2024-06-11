// ignore_for_file: non_constant_identifier_names

import 'package:resumebuilder/Features/Discription/description.dart';
import 'package:resumebuilder/Features/Project/project.dart';
import 'package:resumebuilder/Features/Skills/skills.dart';
import 'package:resumebuilder/Features/userinfo.dart';

List<String> ButtonName = ["User Info", "Description", "Skills", "Projects"];
List page = [
  const UserInfo(),
  const DiscriptionPage(),
  const SkillPage(),
  const ProjectScreen()
];

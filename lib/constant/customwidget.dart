// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget ETextFormField(labelText, controller, icon, maxlines) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20),
    child: TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'field required';
        }
        return null;
      },
      maxLines: maxlines,
      controller: controller,
      decoration: InputDecoration(

          // hintText: ,
          prefixIcon: icon,
          labelText: labelText,
          hintStyle: const TextStyle(fontWeight: FontWeight.w500),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    ),
  );
}

Widget ETitleBar(context, text, customdialog) {
  return ListTile(
    title: Text(text),
    trailing: IconButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return customdialog;
            },
          );
        },
        icon: const Icon(Icons.add)),
  );
}

Widget EListView(controller, identity,) {
  return Obx(
    () => ListView.builder(
      shrinkWrap: true,
      itemCount: controller.itemcount.value,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(onPressed: (){}, icon: const Icon(Icons.edit)),
                IconButton(
                    onPressed: () {
                      controller.delete(index);
                    },
                    icon: const Icon(Icons.delete)),
              ],
            ),
            title: Text(controller.collection[index][identity].toString()),
          ),
        );
      },
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:resumebuilder/constant/textstring.dart';
import 'package:resumebuilder/pdf/pdfview.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          SizedBox(
            width: 250,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PdfView(),
                      ));
                },
                child: Text("Generate Resume")),
          )
        ],
      ),
      body: Center(
        child: SizedBox(
          width: 500,
          height: 500,
          child: Card(
            
            color: Colors.red,
            child: SizedBox(
              height: MediaQuery.sizeOf(context).height / 2,
              width: MediaQuery.sizeOf(context).width / 2,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return page[index];
                              },
                            ));
                          },
                          child: Text(ButtonName[index]),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

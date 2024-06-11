import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:resumebuilder/data/data.dart';
import 'dart:typed_data';

import 'package:resumebuilder/Features/userinfo.dart';

class PdfView extends StatefulWidget {
  const PdfView({super.key});

  @override
  State<PdfView> createState() => _PdfViewState();
}

class _PdfViewState extends State<PdfView> {
  // Page
  @override
  Widget build(BuildContext context) {
    Future<Uint8List> generatePdf() async {
      final pdf = pw.Document();

      pdf.addPage(pw.Page(
          margin: pw.EdgeInsets.zero,
          pageFormat: PdfPageFormat.a4,
          build: (pw.Context context) {
            return pw.Padding(
                child: pw.Column(children: [
                  pw.SizedBox(height: 20),
                  pw.Container(
                      width: double.infinity,
                      height: 100,
                      color: PdfColors.red,
                      child: pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                        children: [
                        pw.RichText(text: pw.TextSpan(children: [
                          pw.TextSpan(text: Data.first_name.text.toString().toUpperCase()+" ",style: pw.TextStyle(fontSize:32 )),
                          pw.TextSpan(text: Data.last_name.text.toString().toUpperCase(),style: pw.TextStyle(fontSize:32 )),
                        ])),
                        // pw.Text(Data.first_name.text.toUpperCase(),style: pw.TextStyle(fontSize:32 )),
                        pw.Column(
                          mainAxisAlignment: pw.MainAxisAlignment.center,
                          children: [
                          pw.Text("+91-${Data.phoneno.text.toString()}"),
                          pw.Text(Data.email.text.toString()),
                          pw.Text(" JATINSINGAL1"),
                        ])
                      ])),
                  pw.Padding(
                      padding: pw.EdgeInsets.symmetric(horizontal: 20),
                      child: pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.SizedBox(height: 10),
                          pw.RichText(
                              text: pw.TextSpan(children: [
                            pw.TextSpan(text: "SUMMARY\n"),
                            pw.TextSpan(
                                text:Data.discription.text.toString())
                          ])),
                          pw.Text("Projects"),
                        ],
                      ))
                ]),
                padding: pw.EdgeInsets.zero); // Center
          }));
      return pdf.save(); //
    }

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: PdfPreview(
      build: (PdfPageFormat format) {
        return generatePdf();
      },
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class More extends StatefulWidget {
  const More({super.key});

  @override
  State<More> createState() => _MoreState();
}

late PdfViewerController _pdfViewerController;

class _MoreState extends State<More> {
  void initState() {
    _pdfViewerController = PdfViewerController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              onPressed: () {
                _pdfViewerController.jumpToPage(6);
              },
              icon: const Icon(
                Icons.arrow_drop_down_circle,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {
                _pdfViewerController.zoomLevel = -1.5;
              },
              icon: const Icon(
                Icons.zoom_out,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {
                _pdfViewerController.zoomLevel = 1.5;
              },
              icon: const Icon(
                Icons.zoom_in,
                color: Colors.white,
              ))
        ],
        title: Text('seerat-e-mustafa'),
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        elevation: 0.00,
        backgroundColor: Colors.greenAccent[400],
      ),
      body: SfPdfViewer.asset(
        'assets/abcd.pdf',
        controller: _pdfViewerController,
      ),
    );
  }
}

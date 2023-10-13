import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

void main() {
  runApp(Details());
}

class Details extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'ABCD'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late PdfViewerController _pdfViewerController;
  // final GlobalKey<SfPdfViewerState> _pdfViewerStateKey = GlobalKey();
  @override
  // void dispose() {
  //   _pdfViewerController = PdfViewerController();
  //   super.dispose();
  // }

  void initState() {
    _pdfViewerController = PdfViewerController();
    super.initState();
  }

  var contoller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SfPdfViewer.asset(
          'assets/abcd.pdf',
          controller: _pdfViewerController,
        ),
        appBar: AppBar(
          actions: <Widget>[
            // IconButton(
            //     onPressed: () {
            //       Center(
            //         child: Container(
            //           color: Colors.black,
            //           child: TextField(
            //             autofocus: true,
            //             keyboardType: TextInputType.number,
            //             controller: contoller,
            //           ),
            //         ),
            //       );
            //       _pdfViewerController.jumpToPage(contoller.text as int);
            // //     },
            //     icon: Icon(
            //       Icons.search_off_rounded,
            //       color: Colors.white,
            //     )),
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
          title: const Text(
            'app',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
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
      ),
    );
  }
}

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           app,
//           style: TextStyle(
//             fontSize: 24,
//           ),
//         ),
//         titleSpacing: 00.0,
//         centerTitle: true,
//         toolbarHeight: 60.2,
//         toolbarOpacity: 0.8,
//         shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.only(
//               bottomRight: Radius.circular(25),
//               bottomLeft: Radius.circular(25)),
//         ),
//         elevation: 0.00,
//         backgroundColor: Colors.greenAccent[400],
//       ),
      
//       body: SfPdfViewer.asset('assets/abcd.pdf'),
//       //         color: Colors.blue,
//       //         child: const ListTile(
//       //           title: Center(
//       //               child: Text(
//       //             "Show File",
//       //             style: TextStyle(
//       //                 fontSize: 28, color: Color.fromRGBO(179, 32, 39, 1)),
//       //           )),
//       //         ),
//       //         shape: RoundedRectangleBorder(
//       //             borderRadius: BorderRadius.circular(35)),
//       //         elevation: 8,
//       //         shadowColor: Colors.green,
//       //         margin: const EdgeInsets.all(20),
//       //       ),
//       //     ),
//       //   ),
//       // ),
//     );
//   }
// }

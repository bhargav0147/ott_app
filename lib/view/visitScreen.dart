import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:provider/provider.dart';

import '../provider/ottProvider.dart';

class VisitScreen extends StatefulWidget {
  const VisitScreen({Key? key}) : super(key: key);

  @override
  State<VisitScreen> createState() => _VisitScreenState();
}

class _VisitScreenState extends State<VisitScreen> {
  OttProvider? appProviderFalse;
  OttProvider? appProviderTrue;
  @override
  Widget build(BuildContext context) {
    int index=ModalRoute.of(context)!.settings.arguments as int;
    appProviderFalse = Provider.of<OttProvider>(context, listen: false);
    appProviderTrue = Provider.of<OttProvider>(context, listen: true);
    return SafeArea(child: Scaffold(
      body: InAppWebView(
        initialUrlRequest: URLRequest(url: Uri.parse("${appProviderFalse!.infoList[index].link}")),
      ),
    ));
  }
}

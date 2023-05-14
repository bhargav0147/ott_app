import 'package:flutter/material.dart';
import 'package:ott_app/provider/ottProvider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  OttProvider? appProviderFalse;
  OttProvider? appProviderTrue;

  @override
  Widget build(BuildContext context) {
    appProviderFalse = Provider.of<OttProvider>(context, listen: false);
    appProviderTrue = Provider.of<OttProvider>(context, listen: true);
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.black,
            centerTitle: true,
            title: Text(
              "All in One OTT",
              style: TextStyle(
                  letterSpacing: 1,
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            leading: Icon(
              Icons.menu,
              size: 30,
              color: Colors.white,
            ),
            actions: [
              Icon(
                Icons.share,
                size: 30,
                color: Colors.white,
              ),
              SizedBox(width: 10),
              Icon(
                Icons.local_fire_department,
                size: 30,
                color: Colors.white,
              ),
              SizedBox(width: 10)
            ],
          ),
          body: GridView.builder(
            gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) => printView(index),
            itemCount: appProviderFalse!.infoList.length,
          ),
        ));
  }

  Widget printView(int index) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 315,
      width: 200,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20),),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Align(
                alignment: Alignment.center,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "visit",arguments: index);
                      },
                      child: Image.asset(
                        "${appProviderFalse!.infoList[index].image}",
                        height: 150,
                        width: 150,
                      ),
                    ))),
            SizedBox(height: 5),
            Text("${appProviderFalse!.infoList[index].name}",style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              letterSpacing: 1,
            ),),
            SizedBox(height: 5)
          ],
        ),
      ),
    );
  }
}

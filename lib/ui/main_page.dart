import 'package:flutter/material.dart';
import 'package:news/ui/common/colors.dart';
import 'package:news/ui/common/text_styles.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: NsColors.White,
        shadowColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Newz',
          style: NsTextStyles.ScreenTitle,
        ),
      ),
      backgroundColor: NsColors.BgColor,
      body: Container(),
    );
  }
}

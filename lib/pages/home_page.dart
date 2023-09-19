import 'package:flutter/material.dart';
import 'package:yummy_flutter/widgets/app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final  double _deviceWidth = MediaQuery.of(context).size.width;
  late final  double _deviceHeight = MediaQuery.of(context).size.height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromRGBO(26, 26, 47, 1),
      appBar: CustomAppBar(height: _deviceHeight * 0.10),
    );
  }
}
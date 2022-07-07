import 'package:flutter/material.dart';
import 'package:ncl_example/views/ShipView.dart';
import 'package:ncl_example/widgets/BlissButton.dart';
import 'package:ncl_example/widgets/EscapeButton.dart';
import 'package:ncl_example/widgets/SkyButton.dart';

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ship Information"),
      ),
      body: Align(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
              ShipView(),
              SizedBox(height: 60),
              Text("Select a ship below", style: TextStyle(fontSize: 24),),
              SizedBox(height: 15),
              BlissButton(),
              EscapeButton(),
              SkyButton(),
            ],
          ),
        )
      ),
    );
  }
}
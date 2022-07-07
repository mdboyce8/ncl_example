import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:ncl_example/viewModels/ShipViewModel.dart';

class EscapeButton extends SingleChildStatelessWidget{
  const EscapeButton({super.key});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return Align(
      alignment: Alignment.topLeft,
      child: TextButton(
        style: TextButton.styleFrom(
          textStyle: const TextStyle(fontSize: 24)
        ),
        child: const Text("Escape"),
          onPressed: () => context.read<ShipViewModel>().getShipDetails("https://www.ncl.com/cms-service/cruise-ships/ESCAPE"),
      )
    );
  }
}
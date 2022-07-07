import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ncl_example/viewModels/ShipViewModel.dart';

class ShipView extends StatelessWidget{
  const ShipView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Name: ${context.watch<ShipViewModel>().ship.name}',
              key: const Key('nameState'),
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 10,),
            Text(
                'Passenger capacity: ${context.watch<ShipViewModel>().ship.shipFacts.passengerCapacity}',
                key: const Key('passengerCapacityState'),
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 10,),
            Text(
                'Crew: ${context.watch<ShipViewModel>().ship.shipFacts.crew}',
                key: const Key('crewState'),
                style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 10,),
            Text(
                'Inaugural date: ${context.watch<ShipViewModel>().ship.shipFacts.inauguralDate}',
                key: const Key('inauguralDateState'),
                style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        )
    );
  }

}
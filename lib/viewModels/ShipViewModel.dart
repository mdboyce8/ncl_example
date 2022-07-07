import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';

import '../models/Ship.dart';

class ShipViewModel with ChangeNotifier, DiagnosticableTreeMixin{
  Ship _ship = const Ship(name: "", shipFacts: ShipFacts(passengerCapacity: "", crew: "", inauguralDate: ""));

  Ship get ship => _ship;

  Future<void> getShipDetails(String url) async{
    final response = await http.get(Uri.parse(url));
    if(response.statusCode == 200) {

      //need to do some error checking here to make sure it's valid JSON
      _ship = Ship.fromJson(jsonDecode(response.body));
      notifyListeners();
    } else {
      throw Exception("HTTP Exception");
    }
  }
}
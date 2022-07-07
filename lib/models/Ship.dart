class Ship{
  final String name;
  final ShipFacts shipFacts;

  const Ship({
    required this.name,
    required this.shipFacts,
  });

  factory Ship.fromJson(Map<String, dynamic> json) {
    // No persistence for now, just what we get from the server
    return Ship(
      name: json['shipName'] ?? "null",
      shipFacts: json['shipFacts'] == null ? const ShipFacts(passengerCapacity: "", crew: "", inauguralDate: "") : ShipFacts.fromJson(json["shipFacts"]),

    );
  }
}

class ShipFacts{
  final String passengerCapacity;
  final String crew;
  final String inauguralDate;

  const ShipFacts({
    required this.passengerCapacity,
    required this.crew,
    required this.inauguralDate,
  });

  factory ShipFacts.fromJson(Map<String, dynamic> json) {
    // No persistence for now, just what we get from the server
    return ShipFacts(
      passengerCapacity: json['passengerCapacity'] ?? "null",
      crew: json['crew'] ?? "",
      inauguralDate: json['inauguralDate'] ?? "",
    );
  }
}
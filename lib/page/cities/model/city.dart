import 'dart:convert';

class City {
  City({
    required this.city,
    required this.state,
  });

  final String city;
  final String state;
 

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'city': city,
      'state': state,
    };
  }

  factory City.fromMap(Map<String, dynamic> map) {
    return City(
      city: (map['city'] ?? '') as String,
      state: (map['state'] ?? '') as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory City.fromJson(String source) => City.fromMap(json.decode(source) as Map<String, dynamic>);
}

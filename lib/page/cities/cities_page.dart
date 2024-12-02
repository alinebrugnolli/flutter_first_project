import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_first_project/page/cities/model/city.dart';

class CitiesPage extends StatefulWidget {
  const CitiesPage({super.key});

  @override
  State<CitiesPage> createState() => _CitiesPageState();
}

class _CitiesPageState extends State<CitiesPage> {
  var cities = <City>[];

  @override
  void initState() {    
    super.initState();
    _loadCities();    
  }
  Future<void> _loadCities() async {
    final citiesJson = await rootBundle.loadString('assets/cities.json');    
    setState(() {
      var citieList = json.decode(citiesJson);
      cities = citieList.map<City>((cityMap) => City.fromMap(cityMap)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cities'),
      ),
      body: ListView.builder(
        itemCount: cities.length,
        itemBuilder: (
          context,
          index,
        ) {
          var city = cities[index];
          return ListTile(
            title: Text(city.city),
            subtitle: Text(city.state),
          );
        },
      ),
    );
  }
}

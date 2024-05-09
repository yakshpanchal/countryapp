import 'dart:convert';

import 'package:countryapp/src/features/MainScreen/presentation/widgets/countryList.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<dynamic>? countryData;
  List<dynamic>? filteredCountryData;

  List<String> continents = [
    'Africa',
    'Americas',
    'Asia',
    'Europe',
    'Oceania',
  ];
  String? selectedContinent;

  Future<void> hitAPI() async {
    http.Response response =
        await http.get(Uri.parse('https://restcountries.com/v3.1/all'));

    if (response.statusCode == 200) {
      setState(() {
        var decodedData = jsonDecode(response.body);
        if (decodedData is List) {
          countryData = decodedData;
          filteredCountryData = List.from(countryData!);
        } else {
          countryData = [];
          countryData!.add(decodedData);
          filteredCountryData = List.from(countryData!);
        }
      });
    } else {
      throw Exception('Failed to load data from API');
    }
  }

  @override
  void initState() {
    super.initState();
    hitAPI();
  }

  Future<void> _refreshData() async {
    await hitAPI();
  }

  void filterCountries(String query) {
    setState(() {
      filteredCountryData = countryData!
          ?.where((country) => country['name']['common']
              .toString()
              .toLowerCase()
              .contains(query.toLowerCase()))
          .toList();
    });
  }

  void filterCountriesByContinent(String? continent) {
    setState(() {
      selectedContinent = continent;
      if (continent == null) {
        filteredCountryData = countryData;
      } else {
        filteredCountryData = countryData!
            ?.where((country) =>
                country['region'].toString().toLowerCase() ==
                continent.toLowerCase())
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Country List'),
      ),
      body: RefreshIndicator(
        // to refresh the page
        onRefresh: _refreshData,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // search filed
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Search country',
                  prefixIcon: Icon(Icons.search),
                ),
                onChanged: filterCountries,
              ),

              // filter icons
              const SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: continents.map((continent) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),

                      // this is a filter chip to filter by continents
                      child: FilterChip(
                        label: Text(continent),
                        selected: selectedContinent == continent,
                        onSelected: (isSelected) {
                          filterCountriesByContinent(
                              isSelected ? continent : null);
                        },
                      ),
                    );
                  }).toList(),
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              // they fetch the country list widget and show the country data
              Expanded(
                child: CountryListView(countryData: filteredCountryData),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

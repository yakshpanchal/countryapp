import 'package:countryapp/src/features/MainScreen/presentation/pages/CountryDetailPage.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CountryListView extends StatelessWidget {
  final List<dynamic>? countryData;
  const CountryListView({super.key, this.countryData});

  @override
  Widget build(BuildContext context) {
    return countryData == null
        ? // here defined loading animation
        Lottie.asset(
            'animation/Animation1.json',
            height: 50,
          )
        : countryData!.isEmpty
            ? const Text('No data available')
            : ListView.builder(
                itemCount: countryData!.length,
                itemBuilder: (context, index) {
                  var country = countryData![index];
                  return ExpansionTile(
                    leading: CircleAvatar(
                      // here at the flag image show
                      child: Image.network(country['flags']['png']),
                    ),
                    title: Text(country['name']['common']),
                    subtitle: Text(country['capital'][0]),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              'Capital: ${country['capital'][0]}',
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Population: ${country['population']}',
                            ),
                            Text(
                              'gini: ${country['gini']}',
                            ),
                            Text(
                              'Independent: ${country['independent']}',
                            ),
                            Text(
                              'Region: ${country['region']}',
                            ),
                            Text(
                              'Area: ${country['area']} sq km',
                            ),
                            // Add more details as needed
                            const SizedBox(
                              height: 20,
                            ),

                            // more details goto CountryDetail page we have more detail about country
                            OutlinedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CountryDetailPage(
                                      countryData: country,
                                    ),
                                  ),
                                );
                              },
                              child: const Text('More Details'),
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                },
              );
  }
}

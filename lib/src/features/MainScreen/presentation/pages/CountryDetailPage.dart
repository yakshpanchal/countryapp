import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CountryDetailPage extends StatelessWidget {
  final Map<String, dynamic> countryData;

  const CountryDetailPage({Key? key, required this.countryData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // show country name
        title: Text(countryData['name']['common']),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // country flag image
            CircleAvatar(
              child: Image.network(countryData['flags']['png']),
              radius: 30,
            ),
            Center(
              child: Text(
                countryData['name']['common'],
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            CircleAvatar(
              radius: 30,
              child: Image.network(countryData['coatOfArms']['png']),
            ),

            const Center(
              child: Text(
                'Coat of Arms',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            Row(
              children: [
                const Text(
                  'Capital :',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '${countryData['capital'][0]}',
                  style: const TextStyle(),
                ),
              ],
            ),

            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Text(
                  'Continents :',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '${countryData['continents']}',
                  style: const TextStyle(),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),

            Row(
              children: [
                const Text(
                  'Population :',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '${countryData['population']}',
                  style: const TextStyle(),
                ),
              ],
            ),

            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Text(
                  'Languages:',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '${countryData['languages']}',
                  style: const TextStyle(),
                ),
              ],
            ),

            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Text(
                  'gini Index :',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '${countryData['gini']}',
                  style: const TextStyle(),
                ),
              ],
            ),

            const SizedBox(
              height: 10,
            ),

            Row(
              children: [
                const Text(
                  'Independent:',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '${countryData['independent']}',
                  style: const TextStyle(),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Text(
                  'Land Locked:',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '${countryData['landlocked']}',
                  style: const TextStyle(),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Text(
                  'Borders :',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '${countryData['borders']}',
                  style: const TextStyle(),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Text(
                  'UN Member:',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '${countryData['unMember']}',
                  style: const TextStyle(),
                ),
              ],
            ),

            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Text(
                  'Status Of Country :',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '${countryData['status']}',
                  style: const TextStyle(),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),

            Row(
              children: [
                const Text(
                  'Region :',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '${countryData['region']}',
                  style: const TextStyle(),
                ),
              ],
            ),

            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Text(
                  'Sub Region :',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '${countryData['subregion']}',
                  style: const TextStyle(),
                ),
              ],
            ),

            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Text(
                  'Area :',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '${countryData['area']} sq Km',
                  style: const TextStyle(),
                ),
              ],
            ),

            const SizedBox(
              height: 10,
            ),

            Row(
              children: [
                const Text(
                  'Timezone :',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '${countryData['timezones'][0]} ',
                  style: const TextStyle(),
                ),
              ],
            ),

            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Text(
                  'Start of week :',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '${countryData['startofweek']} ',
                  style: const TextStyle(),
                ),
              ],
            ),

            const SizedBox(
              height: 10,
            ),
            // Add more details as needed
          ],
        ),
      ),
    );
  }
}

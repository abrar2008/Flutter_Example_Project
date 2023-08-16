

import 'package:covid_api/covid_api_client.dart';

Future<void> main() async {
  final CovidApiClient  covidApiClient = CovidApiClient();
  final data = await covidApiClient.getSummary();
  for (var i = 0; i < data.countries.length; i++) {
    print(data.countries[i].country);
  }
  
}
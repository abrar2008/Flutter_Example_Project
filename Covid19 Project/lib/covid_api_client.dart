import 'dart:convert';

import 'package:covid_api/covid.dart';
import 'package:http/http.dart' as http;

class CovidApiClient {
  CovidApiClient({ http.Client? httpClient})
   : _httpClient = httpClient ?? http.Client();
  
  final http.Client _httpClient;
   static const baseUrl = "api.covid19api.com";

  Future<Covid>  getSummary() async{
     final summaryRequst = Uri.http(baseUrl, "/summary");
     final summaryResponse = await _httpClient.get(summaryRequst);

     if(summaryResponse.statusCode != 200){
       throw SummaryRequstFailure();
     }
     final summaryjson = jsonDecode(summaryResponse.body) as Map <String , dynamic>;

     if(summaryjson.isEmpty){
       throw SummaryResponseFailure();
     }
     return Covid.fromJson(summaryjson);
}

}
class SummaryRequstFailure implements Exception {}
class SummaryResponseFailure implements Exception {}



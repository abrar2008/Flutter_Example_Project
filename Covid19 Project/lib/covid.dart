  import 'package:json_annotation/json_annotation.dart';

part 'covid.g.dart';
@JsonSerializable()
class Covid {
  const Covid ({required this.id , required this.message, required this.countries, required this.global });
  @JsonKey(name :"ID")
  final String id;
  @JsonKey(name :"Message")
  final String message;
  @JsonKey(name :"Global")
  final Global global;
  @JsonKey(name :"Countries")
  final List<Country> countries;
  factory Covid.fromJson(Map<String, dynamic> json) => _$CovidFromJson(json);
  Map<String, dynamic> toJson() => _$CovidToJson(this);
}
@JsonSerializable()
class Global {

  const Global ({ required this.newConfirmed ,required this.totalConfirmed,
   required this.newDeaths , required this.totalDeaths , required this.newRecoverd, required this.totalRecoverd, required this.date  
   
   });
  @JsonKey(name :"NewConfirmed")
  final int newConfirmed;
  @JsonKey(name :"TotalConfirmed")
  final int totalConfirmed;
  @JsonKey(name :"NewDeaths")
  final int newDeaths;
  @JsonKey(name :"TotalDeaths")
  final int totalDeaths;
  @JsonKey(name :"NewRecovered")
  final int newRecoverd;
  @JsonKey(name :"TotalRecovered")
  final int totalRecoverd;
  @JsonKey(name :"Date")
  final String date;

  factory Global.fromJson(Map<String, dynamic> json) => _$GlobalFromJson(json);
  Map<String , dynamic> toJson() => _$GlobalToJson(this);

}
@JsonSerializable()
class Country {
  const Country({required this.id, required this.country , required this.countryCode , required this.slug ,required this.newDeaths , required this.totalConfirmed , required this.newConfirmed , required this.newRecovered , required this.totalDeaths, required this.premium , required this.totalRecovered, required this.date});
 @JsonKey(name :"ID")  
final String id;

 @JsonKey(name :"Country")
final String country;

 @JsonKey(name :"CountryCode")
final String countryCode;

 @JsonKey(name :"Slug")
final String slug;

 @JsonKey(name :"NewConfirmed")
final int newConfirmed;

 @JsonKey(name :"TotalConfirmed")
final int totalConfirmed;

 @JsonKey(name :"NewDeaths")
final int newDeaths;

 @JsonKey(name :"TotalDeaths")
final int totalDeaths;

 @JsonKey(name :"NewRecovered")
final int newRecovered;

 @JsonKey(name :"TotalRecovered")
final int totalRecovered;

 @JsonKey(name :"Date") 
final String date;

 @JsonKey(name :"Premium")
final Premium premium;
 factory Country.fromJson(Map<String, dynamic> json) => _$CountryFromJson(json);
  Map<String, dynamic> toJson() => _$CountryToJson(this);

}
@JsonSerializable()
class Premium{
const  Premium(); 
factory Premium.fromJson(Map<String, dynamic> json) =>
      _$PremiumFromJson(json);
  Map<String, dynamic> toJson() => _$PremiumToJson(this);
}
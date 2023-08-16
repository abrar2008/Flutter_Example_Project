// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'covid.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Covid _$CovidFromJson(Map<String, dynamic> json) {
  return Covid(
    id: json['ID'] as String,
    message: json['Message'] as String,
    countries: (json['Countries'] as List<dynamic>)
        .map((e) => Country.fromJson(e as Map<String, dynamic>))
        .toList(),
    global: Global.fromJson(json['Global'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CovidToJson(Covid instance) => <String, dynamic>{
      'ID': instance.id,
      'Message': instance.message,
      'Global': instance.global,
      'Countries': instance.countries,
    };

Global _$GlobalFromJson(Map<String, dynamic> json) {
  return Global(
    newConfirmed: json['NewConfirmed'] as int,
    totalConfirmed: json['TotalConfirmed'] as int,
    newDeaths: json['NewDeaths'] as int,
    totalDeaths: json['TotalDeaths'] as int,
    newRecoverd: json['NewRecovered'] as int,
    totalRecoverd: json['TotalRecovered'] as int,
    date: json['Date'] as String,
  );
}

Map<String, dynamic> _$GlobalToJson(Global instance) => <String, dynamic>{
      'NewConfirmed': instance.newConfirmed,
      'TotalConfirmed': instance.totalConfirmed,
      'NewDeaths': instance.newDeaths,
      'TotalDeaths': instance.totalDeaths,
      'NewRecovered': instance.newRecoverd,
      'TotalRecovered': instance.totalRecoverd,
      'Date': instance.date,
    };

Country _$CountryFromJson(Map<String, dynamic> json) {
  return Country(
    id: json['ID'] as String,
    country: json['Country'] as String,
    countryCode: json['CountryCode'] as String,
    slug: json['Slug'] as String,
    newDeaths: json['NewDeaths'] as int,
    totalConfirmed: json['TotalConfirmed'] as int,
    newConfirmed: json['NewConfirmed'] as int,
    newRecovered: json['NewRecovered'] as int,
    totalDeaths: json['TotalDeaths'] as int,
    premium: Premium.fromJson(json['Premium'] as Map<String, dynamic>),
    totalRecovered: json['TotalRecovered'] as int,
    date: json['Date'] as String,
  );
}

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
      'ID': instance.id,
      'Country': instance.country,
      'CountryCode': instance.countryCode,
      'Slug': instance.slug,
      'NewConfirmed': instance.newConfirmed,
      'TotalConfirmed': instance.totalConfirmed,
      'NewDeaths': instance.newDeaths,
      'TotalDeaths': instance.totalDeaths,
      'NewRecovered': instance.newRecovered,
      'TotalRecovered': instance.totalRecovered,
      'Date': instance.date,
      'Premium': instance.premium,
    };

Premium _$PremiumFromJson(Map<String, dynamic> json) {
  return Premium();
}

Map<String, dynamic> _$PremiumToJson(Premium instance) => <String, dynamic>{};

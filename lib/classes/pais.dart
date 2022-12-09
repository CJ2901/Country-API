import 'dart:convert';

import 'package:paquetes/classes/pais-classes/capitalInfo.dart';
import 'package:paquetes/classes/pais-classes/car.dart';
import 'package:paquetes/classes/pais-classes/coatOfArms.dart';
import 'package:paquetes/classes/pais-classes/currencies.dart';
import 'package:paquetes/classes/pais-classes/demonyms.dart';
import 'package:paquetes/classes/pais-classes/gini.dart';
import 'package:paquetes/classes/pais-classes/idd.dart';
import 'package:paquetes/classes/pais-classes/languages.dart';
import 'package:paquetes/classes/pais-classes/maps.dart';
import 'package:paquetes/classes/pais-classes/name.dart';
import 'package:paquetes/classes/pais-classes/translation.dart';

List<Pais> paisFromMap(String str) =>
    List<Pais>.from(json.decode(str).map((x) => Pais.fromMap(x)));

String paisToMap(List<Pais> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class Pais {
  Pais({
    required this.name,
    required this.tld,
    required this.cca2,
    required this.ccn3,
    required this.cca3,
    required this.cioc,
    required this.independent,
    required this.status,
    required this.unMember,
    this.currencies,
    required this.idd,
    required this.capital,
    required this.altSpellings,
    required this.region,
    required this.subregion,
    required this.languages,
    required this.translations,
    required this.latlng,
    required this.landlocked,
    required this.borders,
    required this.area,
    required this.demonyms,
    required this.flag,
    required this.maps,
    required this.population,
    required this.gini,
    required this.fifa,
    required this.car,
    required this.timezones,
    required this.continents,
    required this.flags,
    required this.coatOfArms,
    required this.startOfWeek,
    required this.capitalInfo,
  });

  Name name;
  List<String> tld;
  String cca2;
  String ccn3;
  String cca3;
  String cioc;
  bool independent;
  String status;
  bool unMember;
  Currencies? currencies;
  Idd idd;
  List<String> capital;
  List<String> altSpellings;
  String region;
  String subregion;
  Languages languages;
  Map<String, Translation> translations;
  List<double> latlng;
  bool landlocked;
  List<String> borders;
  double area;
  Demonyms demonyms;
  String flag;
  Maps maps;
  int population;
  Gini gini;
  String fifa;
  Car car;
  List<String> timezones;
  List<String> continents;
  CoatOfArms flags;
  CoatOfArms coatOfArms;
  String startOfWeek;
  CapitalInfo capitalInfo;

  factory Pais.fromMap(Map<String, dynamic> json) => Pais(
        name: Name.fromMap(json["name"]),
        tld: List<String>.from(json["tld"].map((x) => x)),
        cca2: json["cca2"],
        ccn3: json["ccn3"],
        cca3: json["cca3"],
        cioc: json["cioc"],
        independent: json["independent"],
        status: json["status"],
        unMember: json["unMember"],
        currencies: Currencies?.fromMap(json["currencies"]),
        idd: Idd.fromMap(json["idd"]),
        capital: List<String>.from(json["capital"].map((x) => x)),
        altSpellings: List<String>.from(json["altSpellings"].map((x) => x)),
        region: json["region"],
        subregion: json["subregion"],
        languages: Languages.fromMap(json["languages"]),
        translations: Map.from(json["translations"]).map(
            (k, v) => MapEntry<String, Translation>(k, Translation.fromMap(v))),
        latlng: List<double>.from(json["latlng"].map((x) => x)),
        landlocked: json["landlocked"],
        borders: List<String>.from(json["borders"].map((x) => x)),
        area: json["area"],
        demonyms: Demonyms.fromMap(json["demonyms"]),
        flag: json["flag"],
        maps: Maps.fromMap(json["maps"]),
        population: json["population"],
        gini: Gini.fromMap(json["gini"]),
        fifa: json["fifa"],
        car: Car.fromMap(json["car"]),
        timezones: List<String>.from(json["timezones"].map((x) => x)),
        continents: List<String>.from(json["continents"].map((x) => x)),
        flags: CoatOfArms.fromMap(json["flags"]),
        coatOfArms: CoatOfArms.fromMap(json["coatOfArms"]),
        startOfWeek: json["startOfWeek"],
        capitalInfo: CapitalInfo.fromMap(json["capitalInfo"]),
      );

  Map<String, dynamic> toMap() => {
        "name": name.toMap(),
        "tld": List<dynamic>.from(tld.map((x) => x)),
        "cca2": cca2,
        "ccn3": ccn3,
        "cca3": cca3,
        "cioc": cioc,
        "independent": independent,
        "status": status,
        "unMember": unMember,
        "currencies": currencies?.toMap(),
        "idd": idd.toMap(),
        "capital": List<dynamic>.from(capital.map((x) => x)),
        "altSpellings": List<dynamic>.from(altSpellings.map((x) => x)),
        "region": region,
        "subregion": subregion,
        "languages": languages.toMap(),
        "translations": Map.from(translations)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toMap())),
        "latlng": List<dynamic>.from(latlng.map((x) => x)),
        "landlocked": landlocked,
        "borders": List<dynamic>.from(borders.map((x) => x)),
        "area": area,
        "demonyms": demonyms.toMap(),
        "flag": flag,
        "maps": maps.toMap(),
        "population": population,
        "gini": gini.toMap(),
        "fifa": fifa,
        "car": car.toMap(),
        "timezones": List<dynamic>.from(timezones.map((x) => x)),
        "continents": List<dynamic>.from(continents.map((x) => x)),
        "flags": flags.toMap(),
        "coatOfArms": coatOfArms.toMap(),
        "startOfWeek": startOfWeek,
        "capitalInfo": capitalInfo.toMap(),
      };
}

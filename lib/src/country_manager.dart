import '../resources/countries_data.dart';
import 'models/country.dart';

class CountryManager {
  
  List<Country> getContries() {
    return countriesData
        .map((Map<String, String> data) => Country.fromMap(data))
        .toList();
  }

  Country getCountry({String code}) {
    return countriesData
        .map((Map<String, String> data) => Country.fromMap(data))
        .toList().firstWhere((Country c) => c.code == code.toUpperCase());
  }

  List<Map<String, String>> getNames() {
    return countriesData.map((Map<String, String> data) {
      return {'code': data['code'], 'name': data['name']};
    }).toList();
  }

  List<String> getCodes() {
    return countriesData
        .map((Map<String, String> data) => data['code'])
        .toList();
  }

  List<Map<String, String>> getCurrencies() {
    return countriesData.map((Map<String, String> data) {
      return {'code': data['code'], 'currency': data['currency']};
    }).toList();
  }

  List<Map<String, String>> getDialCodes() {
    return countriesData.map((Map<String, String> data) {
      return {'code': data['code'], 'dial_code': data['dial_code']};
    }).toList();
  }

  List<Map<String, String>> getCapitals() {
    return countriesData.map((Map<String, String> data) {
      return {'code': data['code'], 'capital': data['capital']};
    }).toList();
  }
}

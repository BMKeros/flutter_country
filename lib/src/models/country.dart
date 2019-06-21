class Country {
  String _code;
  String _name;
  String _dialCode;
  String _capital;
  String _currency;

  Country.fromMap(Map<String, String> map) {
    _code = map['code'] ?? '';
    _name = map['name'] ?? '';
    _dialCode = map['dial_code'] ?? '';
    _capital = map['capital'] ?? '';
    _currency = map['currency'] ?? '';
  }

  String get code => _code;
  String get name => _name;
  String get dialCode => _dialCode;
  String get capital => _capital;
  String get currency => _currency;
}

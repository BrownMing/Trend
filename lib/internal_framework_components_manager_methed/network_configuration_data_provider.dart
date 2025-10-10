import 'secure_string_decoding_service.dart';

// ignore_for_file: non_constant_identifier_names
class NetworkConfigurationDataProvider {
  static final _p0_base = SecureStringDecodingService.d(
    'aHR0cHM6Ly9idXlnLmtpai5idWhqamtrbmguc3RvcmUvZG9ja2luZw==',
  );

  static String get p1_signInUrl =>
      _p0_base + SecureStringDecodingService.d('L2xvZ2lu');
  static String get p2_uploadUrl =>
      _p0_base + SecureStringDecodingService.d('L3VwbG9hZEluZm8=');
  static String get p3_verifyUrl =>
      _p0_base + SecureStringDecodingService.d('L3ZlcmlmeVBheQ==');

  static String get p4_journeyStoreID =>
      SecureStringDecodingService.d('Njc1MzE1NTg1NA==');
  static String get p5_journeyID =>
      SecureStringDecodingService.d('MTcwMTU1OTIxMTE=');
  static String get p6_journeyKey =>
      SecureStringDecodingService.d('MzM1NTk1NzI4');
  static String get p7_journeySecret => SecureStringDecodingService.d(
    'NGZkZWYwMjA4NDc5NGFlNDk2ODBkYzdkNmMyMmNiYWU=',
  );

  static const int p8JourneyTimeout = 1761321600000;
}

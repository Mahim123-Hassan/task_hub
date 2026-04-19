import 'dart:convert';

import 'package:http/http.dart';

class NetworkCaller {
  Future<NetworkResponse> getRequest(String Url) async {
    try {
      Uri uri = Uri.parse(Url);
      Response response = await get(uri);
      final decodedData = jsonDecode(response.body);
      if (response.statusCode == 200) {
        return NetworkResponse(
          isSuccess: true,
          responseCode: response.statusCode,
          body: decodedData,
        );
      } else {
        return NetworkResponse(
          isSuccess: false,
          responseCode: response.statusCode,
        );
      }
    } catch (e) {
      return NetworkResponse(
        isSuccess: false,
        responseCode: -1,
        errorMessage: e.toString(),
      );
    }
  }
}

class NetworkResponse {
  final bool isSuccess;
  final int responseCode;
  final dynamic body;
  final String? errorMessage;

  NetworkResponse({
    required this.isSuccess,
    required this.responseCode,
    this.body,
    this.errorMessage,
  });
}

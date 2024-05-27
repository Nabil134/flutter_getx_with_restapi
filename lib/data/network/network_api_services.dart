import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:get_mvvm/data/app_exceptions.dart';
import 'package:get_mvvm/data/network/base_api_services.dart';
import 'package:http/http.dart'as http;

class NetworkApiServices extends BaseApiServices{

  /*getApi method start here*/
  @override
  Future<dynamic> getApi(String url) async{
    if(kDebugMode) {
      print(url);
    }
    dynamic responseJson;
    try {
      final response = await http.get(Uri.parse(url)).timeout(
        Duration(seconds: 10),);
      responseJson= returnResponse(response);
    }
    on SocketException{
      throw InternetException('');
    }
    on RequestTimeOut{
      throw RequestTimeOut('');
    }
    return responseJson;
  }
  dynamic returnResponse(http.Response response){
    switch (response.statusCode){
      case 200:
      dynamic responseJson = jsonDecode(response.body);
      return responseJson;
      case 400:
      throw InvalidUrlException('');
      default:
      throw FetchDataException('Error Occur while communication with server'+response.statusCode.toString(),);
    }

  }

  /*getApi method end here*/
/*postApi method start here*/
  @override
  Future<dynamic> postApi(var data,String url) async{
    if(kDebugMode) {
      print(url);
      print(data);
    }
    dynamic responseJson;
    try {
      final response = await http.post(Uri.parse(url),
        body: jsonEncode(data)
      ).timeout(
        Duration(seconds: 10),);
      responseJson= returnResponse(response);
    }
    on SocketException{
      throw InternetException('');
    }
    on RequestTimeOut{
      throw RequestTimeOut('');
    }
    return responseJson;
  }

/*postApi method end here*/
}
import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'api_exception.dart';

class ApiService {
  final Dio dio;
  ApiService(this.dio);

  static const host = "https://api.drarchikadidi.com/";

  static const _baseUrl = "${host}api/V1/";

  dynamic postRequest(String subUrl, Map<String, dynamic> inputData,
      {bool withFile = false,
      /* bool requireToken=false,*/ bool cacheRequest = true,
      bool jsonType = false,
      bool forceRefresh = false}) async {
    try {
      String url = "$_baseUrl$subUrl";

      debugPrint('---POST url $_baseUrl$subUrl');
      debugPrint('---Params $inputData', wrapWidth: 1024);
      // debugPrint('---Params ${json.encode(inputData)}');
      Options option = Options(
        contentType: jsonType
            ? Headers.jsonContentType
            : Headers.formUrlEncodedContentType,
        /*headers: requireToken ? {
          'token': true,
        } : {},*/
      );
      Response res = await dio.post(
        "$url",
        data: withFile ? FormData.fromMap(inputData) : inputData,
        options: option,
        // options: cacheRequest ? buildCacheOptions(
        //   const Duration(minutes: 30),
        //   maxStale: const Duration(days: 2),
        //   forceRefresh: forceRefresh,
        //   options: option,
        // ) : option,
      );
      debugPrint('$subUrl statusCode:${res.statusCode}');
      if (res.statusCode == 200 || res.statusCode == 201) {
        var rData = res.data;
        debugPrint('$subUrl---RESULT: $rData');
        log('$subUrl---RESULT FULL: $rData');
        debugPrint('$subUrl---RESULT END');
        return rData;
      } else {
        throw ApiException.fromString("Error Occurred. ${res.statusCode}");
      }
    } on SocketException {
      throw ApiException.fromString("No Internet Connection!");
    } on DioException catch (dioError) {
      throw ApiException.fromDioError(dioError);
    }
  }

  dynamic getRequest(String subUrl,
      {Map<String, dynamic> data = const {},
      /* bool requireToken = false,*/ bool cacheRequest = true,
      bool jsonType = false,
      bool forceRefresh = false}) async {
    try {
      String url = "$_baseUrl$subUrl";

      debugPrint('---GET1 url $_baseUrl$subUrl');
      debugPrint('$subUrl---Params $data');

      Options option = Options(
        contentType: jsonType
            ? Headers.jsonContentType
            : Headers.formUrlEncodedContentType,
        // headers:/* requireToken ? */{
        //   'token': true,
        // }/* : {}*/,
      );
      Response res = await dio.get(
        url,
        queryParameters: data,
        options: option,
        // options: cacheRequest ? buildCacheOptions(
        //   const Duration(minutes: 30),
        //   maxStale: const Duration(days: 2),
        //   forceRefresh: forceRefresh,
        //   options: option,
        // ) : option,
      );
      debugPrint('$subUrl statusCode:${res.statusCode}');
      if (res.statusCode == 200) {
        var rData = res.data;
        debugPrint('$subUrl---RESULT: ${res.data}');
        log('$subUrl---RESULT FULL: ${res.data}');
        debugPrint('$subUrl---RESULT END');
        return rData;
      } else {
        throw ApiException.fromString("Error Occurred. ${res.statusCode}");
      }
    } on SocketException {
      throw ApiException.fromString("No Internet Connection!");
    } on DioException catch (dioError) {
      throw ApiException.fromDioError(dioError);
    }
  }

  dynamic putRequest(String subUrl, Map<String, dynamic> inputData,
      {bool withFile = false,
      /* bool requireToken=false,*/ bool cacheRequest = true,
      bool jsonType = false,
      bool forceRefresh = false}) async {
    try {
      String url = "$_baseUrl$subUrl";
      debugPrint('---PUT url $_baseUrl$subUrl');
      debugPrint('$subUrl---Params $inputData', wrapWidth: 1024);
      // debugPrint('$subUrl---Params ${json.encode(inputData)}');
      Options option = Options(
        contentType: jsonType
            ? Headers.jsonContentType
            : Headers.formUrlEncodedContentType,
        /*headers: requireToken ? {
        'token': true,
      } : {},*/
      );
      Response res = await dio.put(
        "$url",
        data: withFile ? FormData.fromMap(inputData) : inputData,
        options: option,
        // options: cacheRequest ? buildCacheOptions(
        //   const Duration(minutes: 30),
        //   maxStale: const Duration(days: 2),
        //   forceRefresh: forceRefresh,
        //   options: option,
        // ) : option,
      );
      debugPrint('$subUrl statusCode:${res.statusCode}');
      if (res.statusCode == 200 || res.statusCode == 201) {
        var rData = res.data;
        debugPrint('$subUrl---RESULT: $rData');
        log('$subUrl---RESULT FULL: $rData');
        debugPrint('$subUrl---RESULT END');
        return rData;
      } else {
        throw ApiException.fromString("Error Occurred. ${res.statusCode}");
      }
    } on SocketException {
      throw ApiException.fromString("No Internet Connection!");
    } on DioException catch (dioError) {
      throw ApiException.fromDioError(dioError);
    }
  }

  dynamic patchRequest(String subUrl, Map<String, dynamic> inputData,
      {bool withFile = false,
      /* bool requireToken=false,*/ bool cacheRequest = true,
      bool jsonType = false,
      bool forceRefresh = false}) async {
    try {
      String url = "$_baseUrl$subUrl";
      debugPrint('---PATCH url $_baseUrl$subUrl');
      debugPrint('$subUrl---Params $inputData', wrapWidth: 1024);
      // debugPrint('$subUrl---Params ${json.encode(inputData)}');
      Options option = Options(
        contentType: jsonType
            ? Headers.jsonContentType
            : Headers.formUrlEncodedContentType,
        /*headers: requireToken ? {
        'token': true,
      } : {},*/
      );
      Response res = await dio.patch(
        "$url",
        data: withFile ? FormData.fromMap(inputData) : inputData,
        options: option,
        // options: cacheRequest ? buildCacheOptions(
        //   const Duration(minutes: 30),
        //   maxStale: const Duration(days: 2),
        //   forceRefresh: forceRefresh,
        //   options: option,
        // ) : option,
      );
      debugPrint('$subUrl statusCode:${res.statusCode}');
      if (res.statusCode == 200 || res.statusCode == 201) {
        var rData = res.data;
        debugPrint('$subUrl---RESULT: $rData');
        log('$subUrl---RESULT FULL: $rData');
        debugPrint('$subUrl---RESULT END');
        return rData;
      } else {
        throw ApiException.fromString("Error Occurred. ${res.statusCode}");
      }
    } on SocketException {
      throw ApiException.fromString("No Internet Connection!");
    } on DioException catch (dioError) {
      throw ApiException.fromDioError(dioError);
    }
  }
}

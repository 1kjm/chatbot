import 'dart:convert';

import 'package:chatbot/domain/fetchdata/counter.action.dart';
import 'package:chatbot/domain/fetchdata/fetchdata.action.dart';
import 'package:chatbot/domain/store/app.state.dart';
import 'package:dio/dio.dart';
import 'package:redux/redux.dart';

Middleware<AppState> fetchdata() {
  return (Store<AppState> store, action, NextDispatcher dispatch) async {
    if (action is FetchdataAction) {
      try {
        String url =
            'http://api.brainshop.ai/get?bid=158723&key=hvxHwuxR2sVXx21g&uid=[uid]&msg=${action.message}';
        var response = await Dio().get(url);

        ResponseConverter input = ResponseConverter.fromJson(response.data);

        store.dispatch(FetchdataSuccessAction(
            isSuccess: 1, data: jsonDecode(input.message)));
        store.dispatch(CounterIncrement());
        print(jsonDecode(input.message));
      } catch (error) {
        print(error);
      }
    }
    dispatch(action);
  };
}

class ResponseConverter {
  String message;
  ResponseConverter(this.message);
  factory ResponseConverter.fromJson(dynamic json) {
    return ResponseConverter(jsonEncode(json['cnt']));
  }
}

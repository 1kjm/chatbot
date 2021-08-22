import 'package:chatbot/domain/fetchdata/fetchdata.state.dart';
import 'package:chatbot/theme.dart';
import 'package:flutter/material.dart';

class AppState {
  final FetchdataState fetchdataState;
  ThemeData themeData = AppTheme.theme;
  AppState({required this.fetchdataState});

  factory AppState.initial() => AppState(
        fetchdataState: FetchdataState.initial(),
      );

  @override
  bool operator ==(other) =>
      identical(this, other) ||
      other is AppState &&
          runtimeType == other.runtimeType &&
          fetchdataState == other.fetchdataState;

  @override
  int get hashCode => super.hashCode ^ fetchdataState.hashCode;

  @override
  String toString() {
    return "AppState { fetchdataState: $fetchdataState }";
  }
}

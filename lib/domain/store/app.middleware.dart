import 'package:chatbot/domain/fetchdata/fetchdata.action.dart';
import 'package:chatbot/domain/fetchdata/fetchdata.middleware.dart';
import 'package:chatbot/domain/fetchdata/userinput.action.dart';
import 'package:chatbot/domain/fetchdata/userinput.middleware.dart';
import 'package:redux/redux.dart';
import './app.state.dart';

List<Middleware<AppState>> appMiddleware() {
  return [
    TypedMiddleware<AppState, FetchdataAction>(fetchdata()),
    TypedMiddleware<AppState, UserInputAction>(getUserinput())
  ];
}

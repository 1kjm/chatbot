import 'package:chatbot/domain/fetchdata/counter.action.dart';
import 'package:chatbot/domain/fetchdata/fetchdata.action.dart';
import 'package:chatbot/domain/fetchdata/userinput.action.dart';
import 'package:chatbot/domain/store/app.state.dart';
import 'package:redux/redux.dart';

Middleware<AppState> getUserinput() {
  return (Store<AppState> store, action, NextDispatcher dispatch) async {
    try {
      if (action is UserInputAction) {
        store.dispatch(CounterIncrement());

        store.dispatch(FetchdataAction(message: action.input));
      }
    } catch (error) {
      print(error);
    }
    dispatch(action);
  };
}

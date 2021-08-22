import 'package:chatbot/domain/fetchdata/counter.action.dart';
import 'package:chatbot/domain/fetchdata/fetchdata.action.dart';
import 'package:chatbot/domain/fetchdata/userinput.action.dart';

import 'package:redux/redux.dart';
import './fetchdata.state.dart';

final fetchdataReducer = combineReducers<FetchdataState>([
  dataReducer,
  userInputReducer,
  counterReducer,
]);

FetchdataState dataReducer(FetchdataState state, dynamic action) {
  if (action is FetchdataSuccessAction) {
    state.data..add(action.data);
  }
  return state;
}

FetchdataState userInputReducer(FetchdataState state, dynamic action) {
  if (action is UserInputAction) {
    state.data..add(action.input);
  }
  return state;
}

FetchdataState counterReducer(FetchdataState state, dynamic action) {
  if (action is CounterIncrement) {
    state.counter = state.counter + 1;
    print(state.counter);
  }
  return state;
}

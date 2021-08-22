import 'package:chatbot/domain/store/app.middleware.dart';
import 'package:chatbot/domain/store/app.reducer.dart';
import 'package:chatbot/domain/store/app.state.dart';
import 'package:redux/redux.dart';

final store = Store(appReducer,
    initialState: AppState.initial(), middleware: appMiddleware());

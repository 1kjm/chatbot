import 'package:chatbot/domain/fetchdata/fetchdata.reducer.dart';

import './app.state.dart';

AppState appReducer(AppState state, action) => AppState(
      fetchdataState: fetchdataReducer(state.fetchdataState, action),
    );

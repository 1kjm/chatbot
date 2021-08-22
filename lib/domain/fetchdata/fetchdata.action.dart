class FetchdataAction {
  String message;
  FetchdataAction({required this.message});
  @override
  String toString() {
    return 'FetchdataAction { }';
  }
}

class FetchdataSuccessAction {
  final int isSuccess;
  String data;
  FetchdataSuccessAction({required this.isSuccess, required this.data});
  @override
  String toString() {
    return 'FetchdataSuccessAction { isSuccess: $isSuccess ,data:$data}';
  }
}

class FetchdataFailedAction {
  final String error;

  FetchdataFailedAction({required this.error});

  @override
  String toString() {
    return 'FetchdataFailedAction { error: $error }';
  }
}

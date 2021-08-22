class CounterIncrement {
  @override
  String toString() {
    return 'CounterAction { }';
  }
}

class CounterSuccessAction {
  final int isSuccess;

  CounterSuccessAction({required this.isSuccess});
  @override
  String toString() {
    return 'CounterSuccessAction { isSuccess: $isSuccess }';
  }
}

class CounterFailedAction {
  final String error;

  CounterFailedAction({required this.error});

  @override
  String toString() {
    return 'CounterFailedAction { error: $error }';
  }
}

class UserInputAction {
  String input;
  UserInputAction({required this.input});
  @override
  String toString() {
    return 'UserInputAction { }';
  }
}

class UserInputSuccessAction {
  final int isSuccess;
  String input;
  UserInputSuccessAction({required this.isSuccess, required this.input});
  @override
  String toString() {
    return 'UserInputSuccessAction { isSuccess: $isSuccess ,input: $input}';
  }
}

class UserInputFailedAction {
  final String error;

  UserInputFailedAction({required this.error});

  @override
  String toString() {
    return 'UserInputFailedAction { error: $error }';
  }
}

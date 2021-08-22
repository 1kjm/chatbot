class FetchdataState {
  final bool loading;
  final String error;
  List<String> data;

  int counter;

  FetchdataState({
    required this.loading,
    required this.error,
    required this.data,
    required this.counter,
  });

  factory FetchdataState.initial() => FetchdataState(
        loading: false,
        error: '',
        data: [],
        counter: 0,
      );

  FetchdataState copyWith({
    required bool loading,
    required String error,
    required List<String> data,
    required int counter,
  }) =>
      FetchdataState(
        loading: loading,
        error: error,
        data: data,
        counter: counter,
      );

  @override
  bool operator ==(other) =>
      identical(this, other) ||
      other is FetchdataState &&
          runtimeType == other.runtimeType &&
          loading == other.loading &&
          error == other.error;

  @override
  int get hashCode =>
      super.hashCode ^ runtimeType.hashCode ^ loading.hashCode ^ error.hashCode;

  @override
  String toString() => "FetchdataState { loading: $loading,  error: $error}";
}

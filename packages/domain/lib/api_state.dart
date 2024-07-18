abstract class ApiState<T> {
  factory ApiState.success({T data}) = ApiSuccessState;

  factory ApiState.error({T? data, Exception? exception}) = ApiErrorState;

  R on<R extends Object?>({
    required R Function(T? data) success,
    required R Function(T? data, Exception? exception) error,
  });
}

class ApiSuccessState<T> implements ApiState<T> {
  final T? data;

  ApiSuccessState({this.data});

  @override
  R on<R extends Object?>(
      {required R Function(T? data) success,
      required R Function(T? data, Exception? exception) error}) {
    return success(data);
  }
}

class ApiErrorState<T> implements ApiState<T> {
  final T? data;
  final Exception? exception;

  ApiErrorState({this.data, this.exception});

  @override
  R on<R extends Object?>(
      {required R Function(T? data) success,
      required R Function(T? data, Exception? exception) error}) {
    return error(data, exception);
  }
}

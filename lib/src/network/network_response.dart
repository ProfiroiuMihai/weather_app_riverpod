class NetworkResponse<T> {
  NetworkResponse({this.isSuccessful = false, this.data, this.message = ''});

  final T? data;
  final bool isSuccessful;
  final String message;

  NetworkResponse.success(this.data, String? message)
      : isSuccessful = true,
        message = message ?? '';

  NetworkResponse.error(this.message)
      : isSuccessful = false,
        data = null;
}

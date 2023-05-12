import 'package:domain_layer/general/network_status.dart';

class Resource<T> {
  final NetworkStatus networkStatus;
  final T? data;
  final String? message;
  final Exception? error;

  const Resource(
      {required this.networkStatus, this.data, this.message, this.error});

  static Resource<T> loading<T>({T? data}) =>
      Resource<T>(data: data, networkStatus: NetworkStatus.loading);

  static Resource<T> success<T>({T? data}) =>
      Resource<T>(data: data, networkStatus: NetworkStatus.success);

  static Resource<T> failed<T>({T? data, Exception? error}) =>
      Resource<T>(error: error, data: data, networkStatus: NetworkStatus.failed);
}
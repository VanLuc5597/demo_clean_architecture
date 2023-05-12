import 'package:domain_layer/general/resource.dart';

abstract class ResourceUseCase<P, R> {
  Stream<Resource<R>> invoke(P parameter);
}

import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'domain_injection.config.dart';

@InjectableInit(asExtension: false)
FutureOr<GetIt> configureDomainInjection(GetIt getIt) => init(getIt);

void main() {
  configureDomainInjection(GetIt.instance);
}

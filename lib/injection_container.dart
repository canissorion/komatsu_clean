import 'package:get_it/get_it.dart';
import 'package:komatsu_clean/features/presentation/bloc/request_list_bloc.dart';

final sl = GetIt.instance;

void init() {
  // TODO: Implement registerFactory, bloc
  sl.registerFactory(() => RequestListBloc());

  // TODO: Implement, use cases, repository,data source
  sl.registerLazySingleton(() => () {});
}

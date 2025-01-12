part of 'store_cubit.dart';

@immutable
sealed class StoreState {}

final class StoreInitial extends StoreState {}

final class StoreSucessState extends StoreState {
  final dynamic data;

  StoreSucessState({required this.data});
}

final class StoreLoadingState extends StoreState {}

final class StrireFailureState extends StoreState {
  final String errorMessage;

  StrireFailureState({required this.errorMessage});
}

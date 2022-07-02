part of 'home_screen_bloc.dart';

@immutable
abstract class HomeScreenState extends Equatable {}

class HomeScrenLoading extends HomeScreenState{
  @override
  // TODO: implement props
  List<Object?> get props => [];
  
}

class HomeScreenInitial extends HomeScreenState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class HomeScreenFailed extends HomeScreenState{
  final String error;

  HomeScreenFailed({required this.error});

  @override
  // TODO: implement props
  List<Object?> get props => [error];
}

class HomeScreenProductsLoaded extends HomeScreenState{
  final List<ProductModel?>? list;

  HomeScreenProductsLoaded({this.list});

  @override
  List<Object?> get props => [list];
}

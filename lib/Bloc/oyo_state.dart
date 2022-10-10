part of 'oyo_bloc.dart';

@immutable
abstract class OyoState {}

class OyoInitial extends OyoState {}
class OyoLoading extends OyoState {}
class OyoLoaded extends OyoState {}
class OyoError extends OyoState {}

part of 'hotel_bloc.dart';

@immutable
abstract class HotelState {}

class HotelInitial extends HotelState {}
class HotelLoading extends HotelState {}
class HotelLoaded extends HotelState {}
class HotelError extends HotelState {}

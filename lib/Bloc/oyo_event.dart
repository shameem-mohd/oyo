part of 'oyo_bloc.dart';

@immutable
abstract class OyoEvent {}

class getOyo extends OyoEvent{
final String location;

getOyo(this.location);
}

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:oyo/API/OyoApi.dart';
import 'package:oyo/Model/OyoModel.dart';

part 'oyo_event.dart';
part 'oyo_state.dart';

class OyoBloc extends Bloc<OyoEvent, OyoState> {

  late OyoModel oyoModel;
  OyoApi oyoApi =OyoApi();

  OyoBloc() : super(OyoInitial()) {
    on<getOyo>((event, emit)async {
      emit(OyoLoading());
      try{
        oyoModel = await oyoApi.Oyo(event.location);
        emit(OyoLoaded());
      }catch(e){
        emit(OyoError());
        print("error>>>>>>>>>>>>>>"+e.toString());
      }
    });
  }
}

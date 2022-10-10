import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:oyo/API/HOtelApi.dart';
import 'package:oyo/Model/HotelModel.dart';

part 'hotel_event.dart';
part 'hotel_state.dart';

class HotelBloc extends Bloc<HotelEvent, HotelState> {
  late HotelModel hotelModel;
  HotelApi hotelApi = HotelApi();
  HotelBloc() : super(HotelInitial()) {
    on<HotelEvent>((event, emit)async {
      emit (HotelLoading());
      try{
        hotelModel=await hotelApi.Hotel();
      }catch (e){
        emit (HotelError());
        print("error>>>>>>>>>>>>>>>>"+e.toString());
      }
    });
  }
}

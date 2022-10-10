import 'dart:convert';
import 'package:http/http.dart';
import 'package:http/src/response.dart';
import 'package:oyo/API/ApiClient.dart';
import 'package:oyo/Model/HotelModel.dart';



class HotelApi{
  ApiClient apiClient=ApiClient();
  Future<HotelModel>Hotel()async{
    String path="properties/list?destinationId=1506246&pageNumber=1&pageSize=25&checkIn:=2022-08-10&checkOut=2022-09-30&adults1=1&sortOrder=PRICE&locale=en_US&currency=USD";
    Response response=await apiClient.invokeApi(path: path, method: "GET", body: null);
    return HotelModel.fromJson(jsonDecode(response.body));
  }
}

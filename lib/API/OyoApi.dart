import 'dart:convert';
import 'package:http/http.dart';
import 'package:http/src/response.dart';
import 'package:oyo/API/ApiClient.dart';
import 'package:oyo/Model/OyoModel.dart';


class OyoApi{
  ApiClient apiClient=ApiClient();
  Future<OyoModel>Oyo(String location)async{
    String path="locations/v2/search?query=$location&locale=en_US&currency=USD";
    Response response=await apiClient.invokeApi(path: path, method: "GET", body: null);
    return OyoModel.fromJson(jsonDecode(response.body));
  }
}

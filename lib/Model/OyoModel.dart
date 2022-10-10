/// term : "dubai"
/// moresuggestions : 10
/// autoSuggestInstance : null
/// trackingID : "312537141daa41cfb159f6651475b4ee"
/// misspellingfallback : false
/// suggestions : [{"group":"CITY_GROUP","entities":[{"geoId":"6053839","destinationId":"11594","landmarkCityDestinationId":null,"type":"CITY","redirectPage":"DEFAULT_PAGE","latitude":25.27063,"longitude":55.30037,"searchDetail":null,"caption":"<span class='highlighted'>Dubai</span>, Dubai, United Arab Emirates","name":"Dubai"},{"geoId":"6147415","destinationId":"1686798","landmarkCityDestinationId":null,"type":"NEIGHBORHOOD","redirectPage":"DEFAULT_PAGE","latitude":25.080542,"longitude":55.140343,"searchDetail":null,"caption":"<span class='highlighted'>Dubai</span> Marina, Dubai, Dubai, United Arab Emirates","name":"Dubai Marina"},{"geoId":"6142656","destinationId":"1693852","landmarkCityDestinationId":null,"type":"NEIGHBORHOOD","redirectPage":"DEFAULT_PAGE","latitude":25.194984,"longitude":55.278416,"searchDetail":null,"caption":"Downtown <span class='highlighted'>Dubai</span>, Dubai, Dubai, United Arab Emirates","name":"Downtown Dubai"},{"geoId":"6085142","destinationId":"1693814","landmarkCityDestinationId":null,"type":"NEIGHBORHOOD","redirectPage":"DEFAULT_PAGE","latitude":25.12225,"longitude":55.132065,"searchDetail":null,"caption":"Palm Jumeirah, <span class='highlighted'>Dubai</span>, Dubai, United Arab Emirates","name":"Palm Jumeirah"},{"geoId":"6258785","destinationId":"1766308","landmarkCityDestinationId":null,"type":"NEIGHBORHOOD","redirectPage":"DEFAULT_PAGE","latitude":25.076944,"longitude":55.134136,"searchDetail":null,"caption":"Jumeirah Beach Residence, <span class='highlighted'>Dubai</span>, Dubai, United Arab Emirates","name":"Jumeirah Beach Residence"},{"geoId":"177902","destinationId":"1665340","landmarkCityDestinationId":null,"type":"NEIGHBORHOOD","redirectPage":"DEFAULT_PAGE","latitude":25.278847,"longitude":55.33094,"searchDetail":null,"caption":"Deira, <span class='highlighted'>Dubai</span>, Dubai, United Arab Emirates","name":"Deira"}]},{"group":"HOTEL_GROUP","entities":[{"geoId":"918930","destinationId":"213179","landmarkCityDestinationId":null,"type":"HOTEL","redirectPage":"DEFAULT_PAGE","latitude":25.208031,"longitude":55.27215,"searchDetail":null,"caption":"Shangri-La <span class='highlighted'>Dubai</span>, Dubai, Dubai, United Arab Emirates","name":"Shangri-La Dubai"},{"geoId":"18352604","destinationId":"692887","landmarkCityDestinationId":null,"type":"HOTEL","redirectPage":"DEFAULT_PAGE","latitude":25.080029,"longitude":55.135992,"searchDetail":null,"caption":"Rixos Premium <span class='highlighted'>Dubai</span> JBR, Dubai, Dubai, United Arab Emirates","name":"Rixos Premium Dubai JBR"},{"geoId":"8680611","destinationId":"485846","landmarkCityDestinationId":null,"type":"HOTEL","redirectPage":"DEFAULT_PAGE","latitude":25.078706,"longitude":55.137358,"searchDetail":null,"caption":"InterContinental <span class='highlighted'>Dubai</span> Marina, an IHG Hotel, Dubai, Dubai, United Arab Emirates","name":"InterContinental Dubai Marina, an IHG Hotel"},{"geoId":"16039653","destinationId":"627847","landmarkCityDestinationId":null,"type":"HOTEL","redirectPage":"DEFAULT_PAGE","latitude":25.246887,"longitude":55.255871,"searchDetail":null,"caption":"Nikki Beach Resort & Spa <span class='highlighted'>Dubai</span>, Dubai, Dubai, United Arab Emirates","name":"Nikki Beach Resort & Spa Dubai"},{"geoId":"127464","destinationId":"142037","landmarkCityDestinationId":null,"type":"HOTEL","redirectPage":"DEFAULT_PAGE","latitude":25.082476,"longitude":55.137897,"searchDetail":null,"caption":"The Ritz-Carlton, <span class='highlighted'>Dubai</span>, Dubai, Dubai, United Arab Emirates","name":"The Ritz-Carlton, Dubai"}]},{"group":"LANDMARK_GROUP","entities":[{"geoId":"6083275","destinationId":"1660638","landmarkCityDestinationId":"11594","type":"LANDMARK","redirectPage":"DEFAULT_PAGE","latitude":25.19767,"longitude":55.274317,"searchDetail":null,"caption":"Burj Khalifa, <span class='highlighted'>Dubai</span>, Dubai, United Arab Emirates","name":"Burj Khalifa"},{"geoId":"6139591","destinationId":"1692146","landmarkCityDestinationId":"11594","type":"LANDMARK","redirectPage":"DEFAULT_PAGE","latitude":25.261648,"longitude":55.281776,"searchDetail":null,"caption":"<span class='highlighted'>Dubai</span> Cruise Terminal, Dubai, Dubai, United Arab Emirates","name":"Dubai Cruise Terminal"},{"geoId":"6123356","destinationId":"1686797","landmarkCityDestinationId":"11594","type":"LANDMARK","redirectPage":"DEFAULT_PAGE","latitude":25.19727827771156,"longitude":55.27886616433253,"searchDetail":null,"caption":"<span class='highlighted'>Dubai</span> Mall, Dubai, Dubai, United Arab Emirates","name":"Dubai Mall"}]},{"group":"TRANSPORT_GROUP","entities":[{"geoId":"4347972","destinationId":"1637568","landmarkCityDestinationId":null,"type":"AIRPORT","redirectPage":"DEFAULT_PAGE","latitude":25.249077,"longitude":55.352795,"searchDetail":null,"caption":"<span class='highlighted'>Dubai</span>, United Arab Emirates (DXB-Dubai Intl.)","name":"Dubai (DXB-Dubai Intl.)"}]}]
/// geocodeFallback : false

class OyoModel {
  OyoModel({
      String? term, 
      num? moresuggestions, 
      dynamic autoSuggestInstance, 
      String? trackingID, 
      bool? misspellingfallback, 
      List<Suggestions>? suggestions, 
      bool? geocodeFallback,}){
    _term = term;
    _moresuggestions = moresuggestions;
    _autoSuggestInstance = autoSuggestInstance;
    _trackingID = trackingID;
    _misspellingfallback = misspellingfallback;
    _suggestions = suggestions;
    _geocodeFallback = geocodeFallback;
}

  OyoModel.fromJson(dynamic json) {
    _term = json['term'];
    _moresuggestions = json['moresuggestions'];
    _autoSuggestInstance = json['autoSuggestInstance'];
    _trackingID = json['trackingID'];
    _misspellingfallback = json['misspellingfallback'];
    if (json['suggestions'] != null) {
      _suggestions = [];
      json['suggestions'].forEach((v) {
        _suggestions?.add(Suggestions.fromJson(v));
      });
    }
    _geocodeFallback = json['geocodeFallback'];
  }
  String? _term;
  num? _moresuggestions;
  dynamic _autoSuggestInstance;
  String? _trackingID;
  bool? _misspellingfallback;
  List<Suggestions>? _suggestions;
  bool? _geocodeFallback;

  String? get term => _term;
  num? get moresuggestions => _moresuggestions;
  dynamic get autoSuggestInstance => _autoSuggestInstance;
  String? get trackingID => _trackingID;
  bool? get misspellingfallback => _misspellingfallback;
  List<Suggestions>? get suggestions => _suggestions;
  bool? get geocodeFallback => _geocodeFallback;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['term'] = _term;
    map['moresuggestions'] = _moresuggestions;
    map['autoSuggestInstance'] = _autoSuggestInstance;
    map['trackingID'] = _trackingID;
    map['misspellingfallback'] = _misspellingfallback;
    if (_suggestions != null) {
      map['suggestions'] = _suggestions?.map((v) => v.toJson()).toList();
    }
    map['geocodeFallback'] = _geocodeFallback;
    return map;
  }

}

/// group : "CITY_GROUP"
/// entities : [{"geoId":"6053839","destinationId":"11594","landmarkCityDestinationId":null,"type":"CITY","redirectPage":"DEFAULT_PAGE","latitude":25.27063,"longitude":55.30037,"searchDetail":null,"caption":"<span class='highlighted'>Dubai</span>, Dubai, United Arab Emirates","name":"Dubai"},{"geoId":"6147415","destinationId":"1686798","landmarkCityDestinationId":null,"type":"NEIGHBORHOOD","redirectPage":"DEFAULT_PAGE","latitude":25.080542,"longitude":55.140343,"searchDetail":null,"caption":"<span class='highlighted'>Dubai</span> Marina, Dubai, Dubai, United Arab Emirates","name":"Dubai Marina"},{"geoId":"6142656","destinationId":"1693852","landmarkCityDestinationId":null,"type":"NEIGHBORHOOD","redirectPage":"DEFAULT_PAGE","latitude":25.194984,"longitude":55.278416,"searchDetail":null,"caption":"Downtown <span class='highlighted'>Dubai</span>, Dubai, Dubai, United Arab Emirates","name":"Downtown Dubai"},{"geoId":"6085142","destinationId":"1693814","landmarkCityDestinationId":null,"type":"NEIGHBORHOOD","redirectPage":"DEFAULT_PAGE","latitude":25.12225,"longitude":55.132065,"searchDetail":null,"caption":"Palm Jumeirah, <span class='highlighted'>Dubai</span>, Dubai, United Arab Emirates","name":"Palm Jumeirah"},{"geoId":"6258785","destinationId":"1766308","landmarkCityDestinationId":null,"type":"NEIGHBORHOOD","redirectPage":"DEFAULT_PAGE","latitude":25.076944,"longitude":55.134136,"searchDetail":null,"caption":"Jumeirah Beach Residence, <span class='highlighted'>Dubai</span>, Dubai, United Arab Emirates","name":"Jumeirah Beach Residence"},{"geoId":"177902","destinationId":"1665340","landmarkCityDestinationId":null,"type":"NEIGHBORHOOD","redirectPage":"DEFAULT_PAGE","latitude":25.278847,"longitude":55.33094,"searchDetail":null,"caption":"Deira, <span class='highlighted'>Dubai</span>, Dubai, United Arab Emirates","name":"Deira"}]

class Suggestions {
  Suggestions({
      String? group, 
      List<Entities>? entities,}){
    _group = group;
    _entities = entities;
}

  Suggestions.fromJson(dynamic json) {
    _group = json['group'];
    if (json['entities'] != null) {
      _entities = [];
      json['entities'].forEach((v) {
        _entities?.add(Entities.fromJson(v));
      });
    }
  }
  String? _group;
  List<Entities>? _entities;

  String? get group => _group;
  List<Entities>? get entities => _entities;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['group'] = _group;
    if (_entities != null) {
      map['entities'] = _entities?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// geoId : "6053839"
/// destinationId : "11594"
/// landmarkCityDestinationId : null
/// type : "CITY"
/// redirectPage : "DEFAULT_PAGE"
/// latitude : 25.27063
/// longitude : 55.30037
/// searchDetail : null
/// caption : "<span class='highlighted'>Dubai</span>, Dubai, United Arab Emirates"
/// name : "Dubai"

class Entities {
  Entities({
      String? geoId, 
      String? destinationId, 
      dynamic landmarkCityDestinationId, 
      String? type, 
      String? redirectPage, 
      num? latitude, 
      num? longitude, 
      dynamic searchDetail, 
      String? caption, 
      String? name,}){
    _geoId = geoId;
    _destinationId = destinationId;
    _landmarkCityDestinationId = landmarkCityDestinationId;
    _type = type;
    _redirectPage = redirectPage;
    _latitude = latitude;
    _longitude = longitude;
    _searchDetail = searchDetail;
    _caption = caption;
    _name = name;
}

  Entities.fromJson(dynamic json) {
    _geoId = json['geoId'];
    _destinationId = json['destinationId'];
    _landmarkCityDestinationId = json['landmarkCityDestinationId'];
    _type = json['type'];
    _redirectPage = json['redirectPage'];
    _latitude = json['latitude'];
    _longitude = json['longitude'];
    _searchDetail = json['searchDetail'];
    _caption = json['caption'];
    _name = json['name'];
  }
  String? _geoId;
  String? _destinationId;
  dynamic _landmarkCityDestinationId;
  String? _type;
  String? _redirectPage;
  num? _latitude;
  num? _longitude;
  dynamic _searchDetail;
  String? _caption;
  String? _name;

  String? get geoId => _geoId;
  String? get destinationId => _destinationId;
  dynamic get landmarkCityDestinationId => _landmarkCityDestinationId;
  String? get type => _type;
  String? get redirectPage => _redirectPage;
  num? get latitude => _latitude;
  num? get longitude => _longitude;
  dynamic get searchDetail => _searchDetail;
  String? get caption => _caption;
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['geoId'] = _geoId;
    map['destinationId'] = _destinationId;
    map['landmarkCityDestinationId'] = _landmarkCityDestinationId;
    map['type'] = _type;
    map['redirectPage'] = _redirectPage;
    map['latitude'] = _latitude;
    map['longitude'] = _longitude;
    map['searchDetail'] = _searchDetail;
    map['caption'] = _caption;
    map['name'] = _name;
    return map;
  }

}
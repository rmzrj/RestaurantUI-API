/// data : {"branch":{"_id":"618ca87d2a5e2b11e7dbb4fa","location":{"type":"Point","coordinates":[76.30644765448693,10.025870739948061],"address":"Edappally,Kochi"},"status":true,"name":"Kochi","supportNumber":9747676504,"offers":[],"branchBanner":[{"clickable":true,"_id":"619f1222fbcc4cee7c5feae9","linkId":"619f0c8efbcc4cee7c5fe9df","image":"banners%2F5942871637814815022.png"},{"clickable":true,"_id":"619f1252fbcc4cee7c5feb0b","linkId":"619c7b83fbcc4cee7c5fe62c","image":"banners%2F1721171637814862388.png"},{"clickable":false,"_id":"619f86bc95ffdd322f815db5","image":"banners%2F4449191637844668306.png"},{"clickable":false,"_id":"619f86fa95ffdd322f815dc5","image":"banners%2F457921637844729649.png"}],"category":[{"status":true,"_id":"619b994f47b42a8e6b60cd44","category":"619b994f47b42a8e6b60cd44","position":3,"image":{"key":"category/75911637844302806.png","location":"https://fuddo-development.s3.ap-south-1.amazonaws.com/category/75911637844302806.png"},"bannerImage":{"key":"category/8176881637587279193.png","location":"https://fuddo-development.s3.ap-south-1.amazonaws.com/category/8176881637587279193.png"},"name":"meals","__v":0},{"status":true,"_id":"619f14befbcc4cee7c5febb2","category":"619f14befbcc4cee7c5febb2","position":1,"image":{"key":"category/9067491637815485405.png","location":"https://fuddo-development.s3.ap-south-1.amazonaws.com/category/9067491637815485405.png"},"bannerImage":{"key":"category/4172971637815528528.png","location":"https://fuddo-development.s3.ap-south-1.amazonaws.com/category/4172971637815528528.png"},"name":"biriyani","__v":0},{"status":true,"_id":"61a0a8b84b9f35452a1e0aba","category":"61a0a8b84b9f35452a1e0aba","position":2,"image":{"key":"category/5757531637918904585.png","location":"https://fuddo-development.s3.ap-south-1.amazonaws.com/category/5757531637918904585.png"},"bannerImage":{"key":"category/7408101637918904589.png","location":"https://fuddo-development.s3.ap-south-1.amazonaws.com/category/7408101637918904589.png"},"name":"cofee","__v":0}],"distance":154.02902476024923},"quick":[],"restaurant":[{"_id":"619c7b83fbcc4cee7c5fe62c","location":{"address":"Edappally Junction,"},"quickDelivery":false,"storeStatus":true,"name":"Al Baik Kochi","branch":"618ca87d2a5e2b11e7dbb4fa","storeBg":{"key":"restaurants%2F1759661637813506354.png","location":"https%3A%2F%2Ffuddo-development.s3.ap-south-1.amazonaws.com%2Frestaurants%2F1759661637813506354.png"},"openTime":"10:00","closeTime":"09:00","cuisine":"Arabian","selfPickup":false,"sortOrder":1,"avgPersonAmt":300,"distance":7010728.074734536},{"_id":"619f0c8efbcc4cee7c5fe9df","location":{"address":"LuLu Shopping Malls"},"quickDelivery":false,"storeStatus":false,"name":"STARBUCKS","branch":"618ca87d2a5e2b11e7dbb4fa","storeBg":{"key":"restaurants%2F4565781637813390204.png","location":"https%3A%2F%2Ffuddo-development.s3.ap-south-1.amazonaws.com%2Frestaurants%2F4565781637813390204.png"},"openTime":"10:00","closeTime":"09:00","cuisine":"Continental","selfPickup":true,"sortOrder":2,"avgPersonAmt":118,"distance":533.2926671346057},{"_id":"61a1c50471e7de1fb3b8f74f","location":{"address":"Marine Drive"},"quickDelivery":false,"storeStatus":true,"name":"Slice of spice","branch":"618ca87d2a5e2b11e7dbb4fa","storeBg":{"key":"restaurants%2F9457561637991724268.png","location":"https%3A%2F%2Ffuddo-development.s3.ap-south-1.amazonaws.com%2Frestaurants%2F9457561637991724268.png"},"openTime":"10:00","closeTime":"21:00","cuisine":"Arabian","selfPickup":false,"sortOrder":15,"avgPersonAmt":90,"distance":15726.461066065533}]}

class Data_model {
  Data_model({
    Data? data,}){
    _data = data;
  }

  Data_model.fromJson(dynamic json) {
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  Data? _data;

  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

/// branch : {"_id":"618ca87d2a5e2b11e7dbb4fa","location":{"type":"Point","coordinates":[76.30644765448693,10.025870739948061],"address":"Edappally,Kochi"},"status":true,"name":"Kochi","supportNumber":9747676504,"offers":[],"branchBanner":[{"clickable":true,"_id":"619f1222fbcc4cee7c5feae9","linkId":"619f0c8efbcc4cee7c5fe9df","image":"banners%2F5942871637814815022.png"},{"clickable":true,"_id":"619f1252fbcc4cee7c5feb0b","linkId":"619c7b83fbcc4cee7c5fe62c","image":"banners%2F1721171637814862388.png"},{"clickable":false,"_id":"619f86bc95ffdd322f815db5","image":"banners%2F4449191637844668306.png"},{"clickable":false,"_id":"619f86fa95ffdd322f815dc5","image":"banners%2F457921637844729649.png"}],"category":[{"status":true,"_id":"619b994f47b42a8e6b60cd44","category":"619b994f47b42a8e6b60cd44","position":3,"image":{"key":"category/75911637844302806.png","location":"https://fuddo-development.s3.ap-south-1.amazonaws.com/category/75911637844302806.png"},"bannerImage":{"key":"category/8176881637587279193.png","location":"https://fuddo-development.s3.ap-south-1.amazonaws.com/category/8176881637587279193.png"},"name":"meals","__v":0},{"status":true,"_id":"619f14befbcc4cee7c5febb2","category":"619f14befbcc4cee7c5febb2","position":1,"image":{"key":"category/9067491637815485405.png","location":"https://fuddo-development.s3.ap-south-1.amazonaws.com/category/9067491637815485405.png"},"bannerImage":{"key":"category/4172971637815528528.png","location":"https://fuddo-development.s3.ap-south-1.amazonaws.com/category/4172971637815528528.png"},"name":"biriyani","__v":0},{"status":true,"_id":"61a0a8b84b9f35452a1e0aba","category":"61a0a8b84b9f35452a1e0aba","position":2,"image":{"key":"category/5757531637918904585.png","location":"https://fuddo-development.s3.ap-south-1.amazonaws.com/category/5757531637918904585.png"},"bannerImage":{"key":"category/7408101637918904589.png","location":"https://fuddo-development.s3.ap-south-1.amazonaws.com/category/7408101637918904589.png"},"name":"cofee","__v":0}],"distance":154.02902476024923}
/// quick : []
/// restaurant : [{"_id":"619c7b83fbcc4cee7c5fe62c","location":{"address":"Edappally Junction,"},"quickDelivery":false,"storeStatus":true,"name":"Al Baik Kochi","branch":"618ca87d2a5e2b11e7dbb4fa","storeBg":{"key":"restaurants%2F1759661637813506354.png","location":"https%3A%2F%2Ffuddo-development.s3.ap-south-1.amazonaws.com%2Frestaurants%2F1759661637813506354.png"},"openTime":"10:00","closeTime":"09:00","cuisine":"Arabian","selfPickup":false,"sortOrder":1,"avgPersonAmt":300,"distance":7010728.074734536},{"_id":"619f0c8efbcc4cee7c5fe9df","location":{"address":"LuLu Shopping Malls"},"quickDelivery":false,"storeStatus":false,"name":"STARBUCKS","branch":"618ca87d2a5e2b11e7dbb4fa","storeBg":{"key":"restaurants%2F4565781637813390204.png","location":"https%3A%2F%2Ffuddo-development.s3.ap-south-1.amazonaws.com%2Frestaurants%2F4565781637813390204.png"},"openTime":"10:00","closeTime":"09:00","cuisine":"Continental","selfPickup":true,"sortOrder":2,"avgPersonAmt":118,"distance":533.2926671346057},{"_id":"61a1c50471e7de1fb3b8f74f","location":{"address":"Marine Drive"},"quickDelivery":false,"storeStatus":true,"name":"Slice of spice","branch":"618ca87d2a5e2b11e7dbb4fa","storeBg":{"key":"restaurants%2F9457561637991724268.png","location":"https%3A%2F%2Ffuddo-development.s3.ap-south-1.amazonaws.com%2Frestaurants%2F9457561637991724268.png"},"openTime":"10:00","closeTime":"21:00","cuisine":"Arabian","selfPickup":false,"sortOrder":15,"avgPersonAmt":90,"distance":15726.461066065533}]

class Data {
  Data({
    Branch? branch,
    List<dynamic>? quick,
    List<Restaurant>? restaurant,}){
    _branch = branch;
    _quick = quick;
    _restaurant = restaurant;
  }

  Data.fromJson(dynamic json) {
    _branch = json['branch'] != null ? Branch.fromJson(json['branch']) : null;
    if (json['restaurant'] != null) {
      _restaurant = [];
      json['restaurant'].forEach((v) {
        _restaurant?.add(Restaurant.fromJson(v));
      });
    }
  }
  Branch? _branch;
  List<dynamic>? _quick;
  List<Restaurant>? _restaurant;

  Branch? get branch => _branch;
  List<dynamic>? get quick => _quick;
  List<Restaurant>? get restaurant => _restaurant;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_branch != null) {
      map['branch'] = _branch?.toJson();
    }
    if (_quick != null) {
      map['quick'] = _quick?.map((v) => v.toJson()).toList();
    }
    if (_restaurant != null) {
      map['restaurant'] = _restaurant?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// _id : "619c7b83fbcc4cee7c5fe62c"
/// location : {"address":"Edappally Junction,"}
/// quickDelivery : false
/// storeStatus : true
/// name : "Al Baik Kochi"
/// branch : "618ca87d2a5e2b11e7dbb4fa"
/// storeBg : {"key":"restaurants%2F1759661637813506354.png","location":"https%3A%2F%2Ffuddo-development.s3.ap-south-1.amazonaws.com%2Frestaurants%2F1759661637813506354.png"}
/// openTime : "10:00"
/// closeTime : "09:00"
/// cuisine : "Arabian"
/// selfPickup : false
/// sortOrder : 1
/// avgPersonAmt : 300
/// distance : 7010728.074734536

class Restaurant {
  Restaurant({
    String? id,
    Location? location,
    bool? quickDelivery,
    bool? storeStatus,
    String? name,
    String? branch,
    StoreBg? storeBg,
    String? openTime,
    String? closeTime,
    String? cuisine,
    bool? selfPickup,
    int? sortOrder,
    int? avgPersonAmt,
    double? distance,}){
    _id = id;
    _location = location;
    _quickDelivery = quickDelivery;
    _storeStatus = storeStatus;
    _name = name;
    _branch = branch;
    _storeBg = storeBg;
    _openTime = openTime;
    _closeTime = closeTime;
    _cuisine = cuisine;
    _selfPickup = selfPickup;
    _sortOrder = sortOrder;
    _avgPersonAmt = avgPersonAmt;
    _distance = distance;
  }

  Restaurant.fromJson(dynamic json) {
    _id = json['_id'];
    _location = json['location'] != null ? Location.fromJson(json['location']) : null;
    _quickDelivery = json['quickDelivery'];
    _storeStatus = json['storeStatus'];
    _name = json['name'];
    _branch = json['branch'];
    _storeBg = json['storeBg'] != null ? StoreBg.fromJson(json['storeBg']) : null;
    _openTime = json['openTime'];
    _closeTime = json['closeTime'];
    _cuisine = json['cuisine'];
    _selfPickup = json['selfPickup'];
    _sortOrder = json['sortOrder'];
    _avgPersonAmt = json['avgPersonAmt'];
    _distance = json['distance'];
  }
  String? _id;
  Location? _location;
  bool? _quickDelivery;
  bool? _storeStatus;
  String? _name;
  String? _branch;
  StoreBg? _storeBg;
  String? _openTime;
  String? _closeTime;
  String? _cuisine;
  bool? _selfPickup;
  int? _sortOrder;
  int? _avgPersonAmt;
  double? _distance;

  String? get id => _id;
  Location? get location => _location;
  bool? get quickDelivery => _quickDelivery;
  bool? get storeStatus => _storeStatus;
  String? get name => _name;
  String? get branch => _branch;
  StoreBg? get storeBg => _storeBg;
  String? get openTime => _openTime;
  String? get closeTime => _closeTime;
  String? get cuisine => _cuisine;
  bool? get selfPickup => _selfPickup;
  int? get sortOrder => _sortOrder;
  int? get avgPersonAmt => _avgPersonAmt;
  double? get distance => _distance;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    if (_location != null) {
      map['location'] = _location?.toJson();
    }
    map['quickDelivery'] = _quickDelivery;
    map['storeStatus'] = _storeStatus;
    map['name'] = _name;
    map['branch'] = _branch;
    if (_storeBg != null) {
      map['storeBg'] = _storeBg?.toJson();
    }
    map['openTime'] = _openTime;
    map['closeTime'] = _closeTime;
    map['cuisine'] = _cuisine;
    map['selfPickup'] = _selfPickup;
    map['sortOrder'] = _sortOrder;
    map['avgPersonAmt'] = _avgPersonAmt;
    map['distance'] = _distance;
    return map;
  }

}

/// key : "restaurants%2F1759661637813506354.png"
/// location : "https%3A%2F%2Ffuddo-development.s3.ap-south-1.amazonaws.com%2Frestaurants%2F1759661637813506354.png"

class StoreBg {
  StoreBg({
    String? key,
    String? location,}){
    _key = key;
    _location = location;
  }

  StoreBg.fromJson(dynamic json) {
    _key = json['key'];
    _location = json['location'];
  }
  String? _key;
  String? _location;

  String? get key => _key;
  String? get location => _location;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['key'] = _key;
    map['location'] = _location;
    return map;
  }

}

/// address : "Edappally Junction,"

class Location {
  Location({
    String? address,}){
    _address = address;
  }

  Location.fromJson(dynamic json) {
    _address = json['address'];
  }
  String? _address;

  String? get address => _address;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['address'] = _address;
    return map;
  }

}

/// _id : "618ca87d2a5e2b11e7dbb4fa"
/// location : {"type":"Point","coordinates":[76.30644765448693,10.025870739948061],"address":"Edappally,Kochi"}
/// status : true
/// name : "Kochi"
/// supportNumber : 9747676504
/// offers : []
/// branchBanner : [{"clickable":true,"_id":"619f1222fbcc4cee7c5feae9","linkId":"619f0c8efbcc4cee7c5fe9df","image":"banners%2F5942871637814815022.png"},{"clickable":true,"_id":"619f1252fbcc4cee7c5feb0b","linkId":"619c7b83fbcc4cee7c5fe62c","image":"banners%2F1721171637814862388.png"},{"clickable":false,"_id":"619f86bc95ffdd322f815db5","image":"banners%2F4449191637844668306.png"},{"clickable":false,"_id":"619f86fa95ffdd322f815dc5","image":"banners%2F457921637844729649.png"}]
/// category : [{"status":true,"_id":"619b994f47b42a8e6b60cd44","category":"619b994f47b42a8e6b60cd44","position":3,"image":{"key":"category/75911637844302806.png","location":"https://fuddo-development.s3.ap-south-1.amazonaws.com/category/75911637844302806.png"},"bannerImage":{"key":"category/8176881637587279193.png","location":"https://fuddo-development.s3.ap-south-1.amazonaws.com/category/8176881637587279193.png"},"name":"meals","__v":0},{"status":true,"_id":"619f14befbcc4cee7c5febb2","category":"619f14befbcc4cee7c5febb2","position":1,"image":{"key":"category/9067491637815485405.png","location":"https://fuddo-development.s3.ap-south-1.amazonaws.com/category/9067491637815485405.png"},"bannerImage":{"key":"category/4172971637815528528.png","location":"https://fuddo-development.s3.ap-south-1.amazonaws.com/category/4172971637815528528.png"},"name":"biriyani","__v":0},{"status":true,"_id":"61a0a8b84b9f35452a1e0aba","category":"61a0a8b84b9f35452a1e0aba","position":2,"image":{"key":"category/5757531637918904585.png","location":"https://fuddo-development.s3.ap-south-1.amazonaws.com/category/5757531637918904585.png"},"bannerImage":{"key":"category/7408101637918904589.png","location":"https://fuddo-development.s3.ap-south-1.amazonaws.com/category/7408101637918904589.png"},"name":"cofee","__v":0}]
/// distance : 154.02902476024923

class Branch {
  Branch({
    String? id,
    Location? location,
    bool? status,
    String? name,
    int? supportNumber,
    List<dynamic>? offers,
    List<BranchBanner>? branchBanner,
    List<Category>? category,
    double? distance,}){
    _id = id;
    _location = location;
    _status = status;
    _name = name;
    _supportNumber = supportNumber;
    _offers = offers;
    _branchBanner = branchBanner;
    _category = category;
    _distance = distance;
  }

  Branch.fromJson(dynamic json) {
    _id = json['_id'];
    _location = json['location'] != null ? Location.fromJson(json['location']) : null;
    _status = json['status'];
    _name = json['name'];
    _supportNumber = json['supportNumber'];
    if (json['offers'] != null) {
      _offers = [];
      // json['offers'].forEach((v) {
      //   _offers?.add(dynamic.fromJson(v));
      // });
    }
    if (json['branchBanner'] != null) {
      _branchBanner = [];
      json['branchBanner'].forEach((v) {
        _branchBanner?.add(BranchBanner.fromJson(v));
      });
    }
    if (json['category'] != null) {
      _category = [];
      json['category'].forEach((v) {
        _category?.add(Category.fromJson(v));
      });
    }
    _distance = json['distance'];
  }
  String? _id;
  Location? _location;
  bool? _status;
  String? _name;
  int? _supportNumber;
  List<dynamic>? _offers;
  List<BranchBanner>? _branchBanner;
  List<Category>? _category;
  double? _distance;

  String? get id => _id;
  Location? get location => _location;
  bool? get status => _status;
  String? get name => _name;
  int? get supportNumber => _supportNumber;
  List<dynamic>? get offers => _offers;
  List<BranchBanner>? get branchBanner => _branchBanner;
  List<Category>? get category => _category;
  double? get distance => _distance;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    if (_location != null) {
      map['location'] = _location?.toJson();
    }
    map['status'] = _status;
    map['name'] = _name;
    map['supportNumber'] = _supportNumber;
    if (_offers != null) {
      map['offers'] = _offers?.map((v) => v.toJson()).toList();
    }
    if (_branchBanner != null) {
      map['branchBanner'] = _branchBanner?.map((v) => v.toJson()).toList();
    }
    if (_category != null) {
      map['category'] = _category?.map((v) => v.toJson()).toList();
    }
    map['distance'] = _distance;
    return map;
  }

}

/// status : true
/// _id : "619b994f47b42a8e6b60cd44"
/// category : "619b994f47b42a8e6b60cd44"
/// position : 3
/// image : {"key":"category/75911637844302806.png","location":"https://fuddo-development.s3.ap-south-1.amazonaws.com/category/75911637844302806.png"}
/// bannerImage : {"key":"category/8176881637587279193.png","location":"https://fuddo-development.s3.ap-south-1.amazonaws.com/category/8176881637587279193.png"}
/// name : "meals"
/// __v : 0

class Category {
  Category({
    bool? status,
    String? id,
    String? category,
    int? position,
    Images? image,
    BannerImage? bannerImage,
    String? name,
    int? v,}){
    _status = status;
    _id = id;
    _category = category;
    _position = position;
    _image = image;
    _bannerImage = bannerImage;
    _name = name;
    _v = v;
  }

  Category.fromJson(dynamic json) {
    _status = json['status'];
    _id = json['_id'];
    _category = json['category'];
    _position = json['position'];
    _image = json['image'] != null ? Images.fromJson(json['image']) : null;
    _bannerImage = json['bannerImage'] != null ? BannerImage.fromJson(json['bannerImage']) : null;
    _name = json['name'];
    _v = json['_v'];
  }
  bool? _status;
  String? _id;
  String? _category;
  int? _position;
  Images? _image;
  BannerImage? _bannerImage;
  String? _name;
  int? _v;

  bool? get status => _status;
  String? get id => _id;
  String? get category => _category;
  int? get position => _position;
  Images? get image => _image;
  BannerImage? get bannerImage => _bannerImage;
  String? get name => _name;
  int? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['_id'] = _id;
    map['category'] = _category;
    map['position'] = _position;
    if (_image != null) {
      map['image'] = _image?.toJson();
    }
    if (_bannerImage != null) {
      map['bannerImage'] = _bannerImage?.toJson();
    }
    map['name'] = _name;
    map['__v'] = _v;
    return map;
  }

}

/// key : "category/8176881637587279193.png"
/// location : "https://fuddo-development.s3.ap-south-1.amazonaws.com/category/8176881637587279193.png"

class BannerImage {
  BannerImage({
    String? key,
    String? location,}){
    _key = key;
    _location = location;
  }

  BannerImage.fromJson(dynamic json) {
    _key = json['key'];
    _location = json['location'];
  }
  String? _key;
  String? _location;

  String? get key => _key;
  String? get location => _location;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['key'] = _key;
    map['location'] = _location;
    return map;
  }

}

/// key : "category/75911637844302806.png"
/// location : "https://fuddo-development.s3.ap-south-1.amazonaws.com/category/75911637844302806.png"

class Images {
  Images({
    String? key,
    String? location,}){
    _key = key;
    _location = location;
  }

  Images.fromJson(dynamic json) {
    _key = json['key'];
    _location = json['location'];
  }
  String? _key;
  String? _location;

  String? get key => _key;
  String? get location => _location;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['key'] = _key;
    map['location'] = _location;
    return map;
  }

}

/// clickable : true
/// _id : "619f1222fbcc4cee7c5feae9"
/// linkId : "619f0c8efbcc4cee7c5fe9df"
/// image : "banners%2F5942871637814815022.png"

class BranchBanner {
  BranchBanner({
    bool? clickable,
    String? id,
    String? linkId,
    String? image,}){
    _clickable = clickable;
    _id = id;
    _linkId = linkId;
    _image = image;
  }

  BranchBanner.fromJson(dynamic json) {
    _clickable = json['clickable'];
    _id = json['_id'];
    _linkId = json['linkId'];
    _image = json['image'];
  }
  bool? _clickable;
  String? _id;
  String? _linkId;
  String? _image;

  bool? get clickable => _clickable;
  String? get id => _id;
  String? get linkId => _linkId;
  String? get image => _image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['clickable'] = _clickable;
    map['_id'] = _id;
    map['linkId'] = _linkId;
    map['image'] = _image;
    return map;
  }

}

/// type : "Point"
/// coordinates : [76.30644765448693,10.025870739948061]
/// address : "Edappally,Kochi"

class Locations {
  Locations({
    String? type,
    List<double>? coordinates,
    String? address,}){
    _type = type;
    _coordinates = coordinates;
    _address = address;
  }

  Locations.fromJson(dynamic json) {
    _type = json['type'];
    _coordinates = json['coordinates'] != null ? json['coordinates'].cast<double>() : [];
    _address = json['address'];
  }
  String? _type;
  List<double>? _coordinates;
  String? _address;

  String? get type => _type;
  List<double>? get coordinates => _coordinates;
  String? get address => _address;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = _type;
    map['coordinates'] = _coordinates;
    map['address'] = _address;
    return map;
  }

}
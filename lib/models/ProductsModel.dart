/// status : "success"
/// timestamp : "2026-08-28T10:04:15Z"
/// requestId : "9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d"
/// pagination : {"currentPage":1,"totalPages":24,"pageSize":50,"totalRecords":1184,"links":{"self":"https://example.com","next":"https://example.com","prev":null}}
/// data : {"organization":{"id":"org_77218392","name":"Global Retail Corp","taxId":"US-8829103-X","settings":{"currency":"USD","timezone":"America/New_York","featuresEnabled":["beta_checkout","split_shipping","loyalty_rewards"]}},"orders":[{"orderId":"ord_2026_88910","invoiceNumber":"INV-99210-2026","orderStatus":"PROCESSING","financialStatus":"PARTIALLY_REFUNDED","createdAt":"2026-08-27T18:22:00Z","updatedAt":"2026-08-28T09:15:30Z","customer":{"customerId":"cust_44102","firstName":"Alexandre","lastName":"Martins","email":"alex.martins@example.co.uk","phone":"+447700900077","isVerified":true,"tags":["vip","frequent_buyer","tech_enthusiast"],"preferences":{"marketingOptIn":false,"preferredLanguage":"en-GB"}},"billingAddress":{"street":"102 Baker St","apartment":"Suite 4B","city":"London","state":null,"postalCode":"NW1 6XE","countryCode":"GB","coordinates":{"latitude":51.5237,"longitude":-0.1585}},"shippingDetails":{"carrier":"DHL Express","trackingNumber":"JD01460000829101","estimatedDelivery":"2026-09-01T16:00:00Z","signatureRequired":true,"shipments":[{"shipmentId":"shp_001","warehouseId":"wh_east_09","itemsContained":["sku_10029","sku_44921"]},{"shipmentId":"shp_002","warehouseId":"wh_central_02","itemsContained":["sku_88291"]}]},"lineItems":[{"itemId":"li_0001","sku":"sku_10029","name":"QuantumX Wireless Earbuds","quantity":2,"unitPrice":129.99,"discount":{"type":"PROMO_CODE","code":"SUMMER26","amount":25.00},"totalPrice":234.98,"giftWrap":{"requested":true,"message":"Happy Birthday, Dad!","theme":"classic_gold"},"specifications":{"color":"Matte Black","connectivity":"Bluetooth 5.3","warrantyMonths":24}},{"itemId":"li_0002","sku":"sku_44921","name":"Ultra-Wide Charging Pad Pro","quantity":1,"unitPrice":45.00,"discount":null,"totalPrice":45.00,"giftWrap":{"requested":false,"message":null,"theme":null},"specifications":{"color":"Space Gray","powerOutputWatts":15}},{"itemId":"li_0003","sku":"sku_88291","name":"Ergonomic Office Chair Lumbar Support Insert","quantity":1,"unitPrice":89.50,"discount":{"type":"AUTOMATIC","code":"BULK_SAVINGS","amount":9.50},"totalPrice":80.00,"giftWrap":{"requested":false,"message":null,"theme":null},"specifications":{}}],"summary":{"subtotal":394.48,"shippingCost":15.00,"taxAmount":32.75,"grandTotal":442.23,"currencyExchangeRate":1.28},"metadata":{"sourceIp":"192.168.1.45","userAgent":"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7)...","riskScore":0.02,"flags":[]}}]}
/// experimentalFeatures : {"dynamicPricing":true,"aiRecommendations":"v2-alpha"}

class PrroductsModel {
  PrroductsModel({
      String? status, 
      String? timestamp, 
      String? requestId, 
      Pagination? pagination, 
      Data? data, 
      ExperimentalFeatures? experimentalFeatures,}){
    _status = status;
    _timestamp = timestamp;
    _requestId = requestId;
    _pagination = pagination;
    _data = data;
    _experimentalFeatures = experimentalFeatures;
}

  PrroductsModel.fromJson(dynamic json) {
    _status = json['status'];
    _timestamp = json['timestamp'];
    _requestId = json['requestId'];
    _pagination = json['pagination'] != null ? Pagination.fromJson(json['pagination']) : null;
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _experimentalFeatures = json['experimentalFeatures'] != null ? ExperimentalFeatures.fromJson(json['experimentalFeatures']) : null;
  }
  String? _status;
  String? _timestamp;
  String? _requestId;
  Pagination? _pagination;
  Data? _data;
  ExperimentalFeatures? _experimentalFeatures;
PrroductsModel copyWith({  String? status,
  String? timestamp,
  String? requestId,
  Pagination? pagination,
  Data? data,
  ExperimentalFeatures? experimentalFeatures,
}) => PrroductsModel(  status: status ?? _status,
  timestamp: timestamp ?? _timestamp,
  requestId: requestId ?? _requestId,
  pagination: pagination ?? _pagination,
  data: data ?? _data,
  experimentalFeatures: experimentalFeatures ?? _experimentalFeatures,
);
  String? get status => _status;
  String? get timestamp => _timestamp;
  String? get requestId => _requestId;
  Pagination? get pagination => _pagination;
  Data? get data => _data;
  ExperimentalFeatures? get experimentalFeatures => _experimentalFeatures;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['timestamp'] = _timestamp;
    map['requestId'] = _requestId;
    if (_pagination != null) {
      map['pagination'] = _pagination?.toJson();
    }
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    if (_experimentalFeatures != null) {
      map['experimentalFeatures'] = _experimentalFeatures?.toJson();
    }
    return map;
  }

}

/// dynamicPricing : true
/// aiRecommendations : "v2-alpha"

class ExperimentalFeatures {
  ExperimentalFeatures({
      bool? dynamicPricing, 
      String? aiRecommendations,}){
    _dynamicPricing = dynamicPricing;
    _aiRecommendations = aiRecommendations;
}

  ExperimentalFeatures.fromJson(dynamic json) {
    _dynamicPricing = json['dynamicPricing'];
    _aiRecommendations = json['aiRecommendations'];
  }
  bool? _dynamicPricing;
  String? _aiRecommendations;
ExperimentalFeatures copyWith({  bool? dynamicPricing,
  String? aiRecommendations,
}) => ExperimentalFeatures(  dynamicPricing: dynamicPricing ?? _dynamicPricing,
  aiRecommendations: aiRecommendations ?? _aiRecommendations,
);
  bool? get dynamicPricing => _dynamicPricing;
  String? get aiRecommendations => _aiRecommendations;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['dynamicPricing'] = _dynamicPricing;
    map['aiRecommendations'] = _aiRecommendations;
    return map;
  }

}

/// organization : {"id":"org_77218392","name":"Global Retail Corp","taxId":"US-8829103-X","settings":{"currency":"USD","timezone":"America/New_York","featuresEnabled":["beta_checkout","split_shipping","loyalty_rewards"]}}
/// orders : [{"orderId":"ord_2026_88910","invoiceNumber":"INV-99210-2026","orderStatus":"PROCESSING","financialStatus":"PARTIALLY_REFUNDED","createdAt":"2026-08-27T18:22:00Z","updatedAt":"2026-08-28T09:15:30Z","customer":{"customerId":"cust_44102","firstName":"Alexandre","lastName":"Martins","email":"alex.martins@example.co.uk","phone":"+447700900077","isVerified":true,"tags":["vip","frequent_buyer","tech_enthusiast"],"preferences":{"marketingOptIn":false,"preferredLanguage":"en-GB"}},"billingAddress":{"street":"102 Baker St","apartment":"Suite 4B","city":"London","state":null,"postalCode":"NW1 6XE","countryCode":"GB","coordinates":{"latitude":51.5237,"longitude":-0.1585}},"shippingDetails":{"carrier":"DHL Express","trackingNumber":"JD01460000829101","estimatedDelivery":"2026-09-01T16:00:00Z","signatureRequired":true,"shipments":[{"shipmentId":"shp_001","warehouseId":"wh_east_09","itemsContained":["sku_10029","sku_44921"]},{"shipmentId":"shp_002","warehouseId":"wh_central_02","itemsContained":["sku_88291"]}]},"lineItems":[{"itemId":"li_0001","sku":"sku_10029","name":"QuantumX Wireless Earbuds","quantity":2,"unitPrice":129.99,"discount":{"type":"PROMO_CODE","code":"SUMMER26","amount":25.00},"totalPrice":234.98,"giftWrap":{"requested":true,"message":"Happy Birthday, Dad!","theme":"classic_gold"},"specifications":{"color":"Matte Black","connectivity":"Bluetooth 5.3","warrantyMonths":24}},{"itemId":"li_0002","sku":"sku_44921","name":"Ultra-Wide Charging Pad Pro","quantity":1,"unitPrice":45.00,"discount":null,"totalPrice":45.00,"giftWrap":{"requested":false,"message":null,"theme":null},"specifications":{"color":"Space Gray","powerOutputWatts":15}},{"itemId":"li_0003","sku":"sku_88291","name":"Ergonomic Office Chair Lumbar Support Insert","quantity":1,"unitPrice":89.50,"discount":{"type":"AUTOMATIC","code":"BULK_SAVINGS","amount":9.50},"totalPrice":80.00,"giftWrap":{"requested":false,"message":null,"theme":null},"specifications":{}}],"summary":{"subtotal":394.48,"shippingCost":15.00,"taxAmount":32.75,"grandTotal":442.23,"currencyExchangeRate":1.28},"metadata":{"sourceIp":"192.168.1.45","userAgent":"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7)...","riskScore":0.02,"flags":[]}}]

class Data {
  Data({
      Organization? organization, 
      List<Orders>? orders,}){
    _organization = organization;
    _orders = orders;
}

  Data.fromJson(dynamic json) {
    _organization = json['organization'] != null ? Organization.fromJson(json['organization']) : null;
    if (json['orders'] != null) {
      _orders = [];
      json['orders'].forEach((v) {
        _orders?.add(Orders.fromJson(v));
      });
    }
  }
  Organization? _organization;
  List<Orders>? _orders;
Data copyWith({  Organization? organization,
  List<Orders>? orders,
}) => Data(  organization: organization ?? _organization,
  orders: orders ?? _orders,
);
  Organization? get organization => _organization;
  List<Orders>? get orders => _orders;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_organization != null) {
      map['organization'] = _organization?.toJson();
    }
    if (_orders != null) {
      map['orders'] = _orders?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// orderId : "ord_2026_88910"
/// invoiceNumber : "INV-99210-2026"
/// orderStatus : "PROCESSING"
/// financialStatus : "PARTIALLY_REFUNDED"
/// createdAt : "2026-08-27T18:22:00Z"
/// updatedAt : "2026-08-28T09:15:30Z"
/// customer : {"customerId":"cust_44102","firstName":"Alexandre","lastName":"Martins","email":"alex.martins@example.co.uk","phone":"+447700900077","isVerified":true,"tags":["vip","frequent_buyer","tech_enthusiast"],"preferences":{"marketingOptIn":false,"preferredLanguage":"en-GB"}}
/// billingAddress : {"street":"102 Baker St","apartment":"Suite 4B","city":"London","state":null,"postalCode":"NW1 6XE","countryCode":"GB","coordinates":{"latitude":51.5237,"longitude":-0.1585}}
/// shippingDetails : {"carrier":"DHL Express","trackingNumber":"JD01460000829101","estimatedDelivery":"2026-09-01T16:00:00Z","signatureRequired":true,"shipments":[{"shipmentId":"shp_001","warehouseId":"wh_east_09","itemsContained":["sku_10029","sku_44921"]},{"shipmentId":"shp_002","warehouseId":"wh_central_02","itemsContained":["sku_88291"]}]}
/// lineItems : [{"itemId":"li_0001","sku":"sku_10029","name":"QuantumX Wireless Earbuds","quantity":2,"unitPrice":129.99,"discount":{"type":"PROMO_CODE","code":"SUMMER26","amount":25.00},"totalPrice":234.98,"giftWrap":{"requested":true,"message":"Happy Birthday, Dad!","theme":"classic_gold"},"specifications":{"color":"Matte Black","connectivity":"Bluetooth 5.3","warrantyMonths":24}},{"itemId":"li_0002","sku":"sku_44921","name":"Ultra-Wide Charging Pad Pro","quantity":1,"unitPrice":45.00,"discount":null,"totalPrice":45.00,"giftWrap":{"requested":false,"message":null,"theme":null},"specifications":{"color":"Space Gray","powerOutputWatts":15}},{"itemId":"li_0003","sku":"sku_88291","name":"Ergonomic Office Chair Lumbar Support Insert","quantity":1,"unitPrice":89.50,"discount":{"type":"AUTOMATIC","code":"BULK_SAVINGS","amount":9.50},"totalPrice":80.00,"giftWrap":{"requested":false,"message":null,"theme":null},"specifications":{}}]
/// summary : {"subtotal":394.48,"shippingCost":15.00,"taxAmount":32.75,"grandTotal":442.23,"currencyExchangeRate":1.28}
/// metadata : {"sourceIp":"192.168.1.45","userAgent":"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7)...","riskScore":0.02,"flags":[]}

class Orders {
  Orders({
      String? orderId, 
      String? invoiceNumber, 
      String? orderStatus, 
      String? financialStatus, 
      String? createdAt, 
      String? updatedAt, 
      Customer? customer, 
      BillingAddress? billingAddress, 
      ShippingDetails? shippingDetails, 
      List<LineItems>? lineItems, 
      Summary? summary, 
      Metadata? metadata,}){
    _orderId = orderId;
    _invoiceNumber = invoiceNumber;
    _orderStatus = orderStatus;
    _financialStatus = financialStatus;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _customer = customer;
    _billingAddress = billingAddress;
    _shippingDetails = shippingDetails;
    _lineItems = lineItems;
    _summary = summary;
    _metadata = metadata;
}

  Orders.fromJson(dynamic json) {
    _orderId = json['orderId'];
    _invoiceNumber = json['invoiceNumber'];
    _orderStatus = json['orderStatus'];
    _financialStatus = json['financialStatus'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _customer = json['customer'] != null ? Customer.fromJson(json['customer']) : null;
    _billingAddress = json['billingAddress'] != null ? BillingAddress.fromJson(json['billingAddress']) : null;
    _shippingDetails = json['shippingDetails'] != null ? ShippingDetails.fromJson(json['shippingDetails']) : null;
    if (json['lineItems'] != null) {
      _lineItems = [];
      json['lineItems'].forEach((v) {
        _lineItems?.add(LineItems.fromJson(v));
      });
    }
    _summary = json['summary'] != null ? Summary.fromJson(json['summary']) : null;
    _metadata = json['metadata'] != null ? Metadata.fromJson(json['metadata']) : null;
  }
  String? _orderId;
  String? _invoiceNumber;
  String? _orderStatus;
  String? _financialStatus;
  String? _createdAt;
  String? _updatedAt;
  Customer? _customer;
  BillingAddress? _billingAddress;
  ShippingDetails? _shippingDetails;
  List<LineItems>? _lineItems;
  Summary? _summary;
  Metadata? _metadata;
Orders copyWith({  String? orderId,
  String? invoiceNumber,
  String? orderStatus,
  String? financialStatus,
  String? createdAt,
  String? updatedAt,
  Customer? customer,
  BillingAddress? billingAddress,
  ShippingDetails? shippingDetails,
  List<LineItems>? lineItems,
  Summary? summary,
  Metadata? metadata,
}) => Orders(  orderId: orderId ?? _orderId,
  invoiceNumber: invoiceNumber ?? _invoiceNumber,
  orderStatus: orderStatus ?? _orderStatus,
  financialStatus: financialStatus ?? _financialStatus,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  customer: customer ?? _customer,
  billingAddress: billingAddress ?? _billingAddress,
  shippingDetails: shippingDetails ?? _shippingDetails,
  lineItems: lineItems ?? _lineItems,
  summary: summary ?? _summary,
  metadata: metadata ?? _metadata,
);
  String? get orderId => _orderId;
  String? get invoiceNumber => _invoiceNumber;
  String? get orderStatus => _orderStatus;
  String? get financialStatus => _financialStatus;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  Customer? get customer => _customer;
  BillingAddress? get billingAddress => _billingAddress;
  ShippingDetails? get shippingDetails => _shippingDetails;
  List<LineItems>? get lineItems => _lineItems;
  Summary? get summary => _summary;
  Metadata? get metadata => _metadata;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['orderId'] = _orderId;
    map['invoiceNumber'] = _invoiceNumber;
    map['orderStatus'] = _orderStatus;
    map['financialStatus'] = _financialStatus;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    if (_customer != null) {
      map['customer'] = _customer?.toJson();
    }
    if (_billingAddress != null) {
      map['billingAddress'] = _billingAddress?.toJson();
    }
    if (_shippingDetails != null) {
      map['shippingDetails'] = _shippingDetails?.toJson();
    }
    if (_lineItems != null) {
      map['lineItems'] = _lineItems?.map((v) => v.toJson()).toList();
    }
    if (_summary != null) {
      map['summary'] = _summary?.toJson();
    }
    if (_metadata != null) {
      map['metadata'] = _metadata?.toJson();
    }
    return map;
  }

}

/// sourceIp : "192.168.1.45"
/// userAgent : "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7)..."
/// riskScore : 0.02
/// flags : []

class Metadata {
  Metadata({
      String? sourceIp, 
      String? userAgent, 
      num? riskScore, 
      List<dynamic>? flags,}){
    _sourceIp = sourceIp;
    _userAgent = userAgent;
    _riskScore = riskScore;
    _flags = flags;
}

  Metadata.fromJson(dynamic json) {
    _sourceIp = json['sourceIp'];
    _userAgent = json['userAgent'];
    _riskScore = json['riskScore'];
    if (json['flags'] != null) {
      _flags = [];
      json['flags'].forEach((v) {
        _flags?.add(Dynamic.fromJson(v));
      });
    }
  }
  String? _sourceIp;
  String? _userAgent;
  num? _riskScore;
  List<dynamic>? _flags;
Metadata copyWith({  String? sourceIp,
  String? userAgent,
  num? riskScore,
  List<dynamic>? flags,
}) => Metadata(  sourceIp: sourceIp ?? _sourceIp,
  userAgent: userAgent ?? _userAgent,
  riskScore: riskScore ?? _riskScore,
  flags: flags ?? _flags,
);
  String? get sourceIp => _sourceIp;
  String? get userAgent => _userAgent;
  num? get riskScore => _riskScore;
  List<dynamic>? get flags => _flags;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sourceIp'] = _sourceIp;
    map['userAgent'] = _userAgent;
    map['riskScore'] = _riskScore;
    if (_flags != null) {
      map['flags'] = _flags?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// subtotal : 394.48
/// shippingCost : 15.00
/// taxAmount : 32.75
/// grandTotal : 442.23
/// currencyExchangeRate : 1.28

class Summary {
  Summary({
      num? subtotal, 
      num? shippingCost, 
      num? taxAmount, 
      num? grandTotal, 
      num? currencyExchangeRate,}){
    _subtotal = subtotal;
    _shippingCost = shippingCost;
    _taxAmount = taxAmount;
    _grandTotal = grandTotal;
    _currencyExchangeRate = currencyExchangeRate;
}

  Summary.fromJson(dynamic json) {
    _subtotal = json['subtotal'];
    _shippingCost = json['shippingCost'];
    _taxAmount = json['taxAmount'];
    _grandTotal = json['grandTotal'];
    _currencyExchangeRate = json['currencyExchangeRate'];
  }
  num? _subtotal;
  num? _shippingCost;
  num? _taxAmount;
  num? _grandTotal;
  num? _currencyExchangeRate;
Summary copyWith({  num? subtotal,
  num? shippingCost,
  num? taxAmount,
  num? grandTotal,
  num? currencyExchangeRate,
}) => Summary(  subtotal: subtotal ?? _subtotal,
  shippingCost: shippingCost ?? _shippingCost,
  taxAmount: taxAmount ?? _taxAmount,
  grandTotal: grandTotal ?? _grandTotal,
  currencyExchangeRate: currencyExchangeRate ?? _currencyExchangeRate,
);
  num? get subtotal => _subtotal;
  num? get shippingCost => _shippingCost;
  num? get taxAmount => _taxAmount;
  num? get grandTotal => _grandTotal;
  num? get currencyExchangeRate => _currencyExchangeRate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['subtotal'] = _subtotal;
    map['shippingCost'] = _shippingCost;
    map['taxAmount'] = _taxAmount;
    map['grandTotal'] = _grandTotal;
    map['currencyExchangeRate'] = _currencyExchangeRate;
    return map;
  }

}

/// itemId : "li_0001"
/// sku : "sku_10029"
/// name : "QuantumX Wireless Earbuds"
/// quantity : 2
/// unitPrice : 129.99
/// discount : {"type":"PROMO_CODE","code":"SUMMER26","amount":25.00}
/// totalPrice : 234.98
/// giftWrap : {"requested":true,"message":"Happy Birthday, Dad!","theme":"classic_gold"}
/// specifications : {"color":"Matte Black","connectivity":"Bluetooth 5.3","warrantyMonths":24}

class LineItems {
  LineItems({
      String? itemId, 
      String? sku, 
      String? name, 
      num? quantity, 
      num? unitPrice, 
      Discount? discount, 
      num? totalPrice, 
      GiftWrap? giftWrap, 
      Specifications? specifications,}){
    _itemId = itemId;
    _sku = sku;
    _name = name;
    _quantity = quantity;
    _unitPrice = unitPrice;
    _discount = discount;
    _totalPrice = totalPrice;
    _giftWrap = giftWrap;
    _specifications = specifications;
}

  LineItems.fromJson(dynamic json) {
    _itemId = json['itemId'];
    _sku = json['sku'];
    _name = json['name'];
    _quantity = json['quantity'];
    _unitPrice = json['unitPrice'];
    _discount = json['discount'] != null ? Discount.fromJson(json['discount']) : null;
    _totalPrice = json['totalPrice'];
    _giftWrap = json['giftWrap'] != null ? GiftWrap.fromJson(json['giftWrap']) : null;
    _specifications = json['specifications'] != null ? Specifications.fromJson(json['specifications']) : null;
  }
  String? _itemId;
  String? _sku;
  String? _name;
  num? _quantity;
  num? _unitPrice;
  Discount? _discount;
  num? _totalPrice;
  GiftWrap? _giftWrap;
  Specifications? _specifications;
LineItems copyWith({  String? itemId,
  String? sku,
  String? name,
  num? quantity,
  num? unitPrice,
  Discount? discount,
  num? totalPrice,
  GiftWrap? giftWrap,
  Specifications? specifications,
}) => LineItems(  itemId: itemId ?? _itemId,
  sku: sku ?? _sku,
  name: name ?? _name,
  quantity: quantity ?? _quantity,
  unitPrice: unitPrice ?? _unitPrice,
  discount: discount ?? _discount,
  totalPrice: totalPrice ?? _totalPrice,
  giftWrap: giftWrap ?? _giftWrap,
  specifications: specifications ?? _specifications,
);
  String? get itemId => _itemId;
  String? get sku => _sku;
  String? get name => _name;
  num? get quantity => _quantity;
  num? get unitPrice => _unitPrice;
  Discount? get discount => _discount;
  num? get totalPrice => _totalPrice;
  GiftWrap? get giftWrap => _giftWrap;
  Specifications? get specifications => _specifications;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['itemId'] = _itemId;
    map['sku'] = _sku;
    map['name'] = _name;
    map['quantity'] = _quantity;
    map['unitPrice'] = _unitPrice;
    if (_discount != null) {
      map['discount'] = _discount?.toJson();
    }
    map['totalPrice'] = _totalPrice;
    if (_giftWrap != null) {
      map['giftWrap'] = _giftWrap?.toJson();
    }
    if (_specifications != null) {
      map['specifications'] = _specifications?.toJson();
    }
    return map;
  }

}

/// color : "Matte Black"
/// connectivity : "Bluetooth 5.3"
/// warrantyMonths : 24

class Specifications {
  Specifications({
      String? color, 
      String? connectivity, 
      num? warrantyMonths,}){
    _color = color;
    _connectivity = connectivity;
    _warrantyMonths = warrantyMonths;
}

  Specifications.fromJson(dynamic json) {
    _color = json['color'];
    _connectivity = json['connectivity'];
    _warrantyMonths = json['warrantyMonths'];
  }
  String? _color;
  String? _connectivity;
  num? _warrantyMonths;
Specifications copyWith({  String? color,
  String? connectivity,
  num? warrantyMonths,
}) => Specifications(  color: color ?? _color,
  connectivity: connectivity ?? _connectivity,
  warrantyMonths: warrantyMonths ?? _warrantyMonths,
);
  String? get color => _color;
  String? get connectivity => _connectivity;
  num? get warrantyMonths => _warrantyMonths;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['color'] = _color;
    map['connectivity'] = _connectivity;
    map['warrantyMonths'] = _warrantyMonths;
    return map;
  }

}

/// requested : true
/// message : "Happy Birthday, Dad!"
/// theme : "classic_gold"

class GiftWrap {
  GiftWrap({
      bool? requested, 
      String? message, 
      String? theme,}){
    _requested = requested;
    _message = message;
    _theme = theme;
}

  GiftWrap.fromJson(dynamic json) {
    _requested = json['requested'];
    _message = json['message'];
    _theme = json['theme'];
  }
  bool? _requested;
  String? _message;
  String? _theme;
GiftWrap copyWith({  bool? requested,
  String? message,
  String? theme,
}) => GiftWrap(  requested: requested ?? _requested,
  message: message ?? _message,
  theme: theme ?? _theme,
);
  bool? get requested => _requested;
  String? get message => _message;
  String? get theme => _theme;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['requested'] = _requested;
    map['message'] = _message;
    map['theme'] = _theme;
    return map;
  }

}

/// type : "PROMO_CODE"
/// code : "SUMMER26"
/// amount : 25.00

class Discount {
  Discount({
      String? type, 
      String? code, 
      num? amount,}){
    _type = type;
    _code = code;
    _amount = amount;
}

  Discount.fromJson(dynamic json) {
    _type = json['type'];
    _code = json['code'];
    _amount = json['amount'];
  }
  String? _type;
  String? _code;
  num? _amount;
Discount copyWith({  String? type,
  String? code,
  num? amount,
}) => Discount(  type: type ?? _type,
  code: code ?? _code,
  amount: amount ?? _amount,
);
  String? get type => _type;
  String? get code => _code;
  num? get amount => _amount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = _type;
    map['code'] = _code;
    map['amount'] = _amount;
    return map;
  }

}

/// carrier : "DHL Express"
/// trackingNumber : "JD01460000829101"
/// estimatedDelivery : "2026-09-01T16:00:00Z"
/// signatureRequired : true
/// shipments : [{"shipmentId":"shp_001","warehouseId":"wh_east_09","itemsContained":["sku_10029","sku_44921"]},{"shipmentId":"shp_002","warehouseId":"wh_central_02","itemsContained":["sku_88291"]}]

class ShippingDetails {
  ShippingDetails({
      String? carrier, 
      String? trackingNumber, 
      String? estimatedDelivery, 
      bool? signatureRequired, 
      List<Shipments>? shipments,}){
    _carrier = carrier;
    _trackingNumber = trackingNumber;
    _estimatedDelivery = estimatedDelivery;
    _signatureRequired = signatureRequired;
    _shipments = shipments;
}

  ShippingDetails.fromJson(dynamic json) {
    _carrier = json['carrier'];
    _trackingNumber = json['trackingNumber'];
    _estimatedDelivery = json['estimatedDelivery'];
    _signatureRequired = json['signatureRequired'];
    if (json['shipments'] != null) {
      _shipments = [];
      json['shipments'].forEach((v) {
        _shipments?.add(Shipments.fromJson(v));
      });
    }
  }
  String? _carrier;
  String? _trackingNumber;
  String? _estimatedDelivery;
  bool? _signatureRequired;
  List<Shipments>? _shipments;
ShippingDetails copyWith({  String? carrier,
  String? trackingNumber,
  String? estimatedDelivery,
  bool? signatureRequired,
  List<Shipments>? shipments,
}) => ShippingDetails(  carrier: carrier ?? _carrier,
  trackingNumber: trackingNumber ?? _trackingNumber,
  estimatedDelivery: estimatedDelivery ?? _estimatedDelivery,
  signatureRequired: signatureRequired ?? _signatureRequired,
  shipments: shipments ?? _shipments,
);
  String? get carrier => _carrier;
  String? get trackingNumber => _trackingNumber;
  String? get estimatedDelivery => _estimatedDelivery;
  bool? get signatureRequired => _signatureRequired;
  List<Shipments>? get shipments => _shipments;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['carrier'] = _carrier;
    map['trackingNumber'] = _trackingNumber;
    map['estimatedDelivery'] = _estimatedDelivery;
    map['signatureRequired'] = _signatureRequired;
    if (_shipments != null) {
      map['shipments'] = _shipments?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// shipmentId : "shp_001"
/// warehouseId : "wh_east_09"
/// itemsContained : ["sku_10029","sku_44921"]

class Shipments {
  Shipments({
      String? shipmentId, 
      String? warehouseId, 
      List<String>? itemsContained,}){
    _shipmentId = shipmentId;
    _warehouseId = warehouseId;
    _itemsContained = itemsContained;
}

  Shipments.fromJson(dynamic json) {
    _shipmentId = json['shipmentId'];
    _warehouseId = json['warehouseId'];
    _itemsContained = json['itemsContained'] != null ? json['itemsContained'].cast<String>() : [];
  }
  String? _shipmentId;
  String? _warehouseId;
  List<String>? _itemsContained;
Shipments copyWith({  String? shipmentId,
  String? warehouseId,
  List<String>? itemsContained,
}) => Shipments(  shipmentId: shipmentId ?? _shipmentId,
  warehouseId: warehouseId ?? _warehouseId,
  itemsContained: itemsContained ?? _itemsContained,
);
  String? get shipmentId => _shipmentId;
  String? get warehouseId => _warehouseId;
  List<String>? get itemsContained => _itemsContained;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['shipmentId'] = _shipmentId;
    map['warehouseId'] = _warehouseId;
    map['itemsContained'] = _itemsContained;
    return map;
  }

}

/// street : "102 Baker St"
/// apartment : "Suite 4B"
/// city : "London"
/// state : null
/// postalCode : "NW1 6XE"
/// countryCode : "GB"
/// coordinates : {"latitude":51.5237,"longitude":-0.1585}

class BillingAddress {
  BillingAddress({
      String? street, 
      String? apartment, 
      String? city, 
      dynamic state, 
      String? postalCode, 
      String? countryCode, 
      Coordinates? coordinates,}){
    _street = street;
    _apartment = apartment;
    _city = city;
    _state = state;
    _postalCode = postalCode;
    _countryCode = countryCode;
    _coordinates = coordinates;
}

  BillingAddress.fromJson(dynamic json) {
    _street = json['street'];
    _apartment = json['apartment'];
    _city = json['city'];
    _state = json['state'];
    _postalCode = json['postalCode'];
    _countryCode = json['countryCode'];
    _coordinates = json['coordinates'] != null ? Coordinates.fromJson(json['coordinates']) : null;
  }
  String? _street;
  String? _apartment;
  String? _city;
  dynamic _state;
  String? _postalCode;
  String? _countryCode;
  Coordinates? _coordinates;
BillingAddress copyWith({  String? street,
  String? apartment,
  String? city,
  dynamic state,
  String? postalCode,
  String? countryCode,
  Coordinates? coordinates,
}) => BillingAddress(  street: street ?? _street,
  apartment: apartment ?? _apartment,
  city: city ?? _city,
  state: state ?? _state,
  postalCode: postalCode ?? _postalCode,
  countryCode: countryCode ?? _countryCode,
  coordinates: coordinates ?? _coordinates,
);
  String? get street => _street;
  String? get apartment => _apartment;
  String? get city => _city;
  dynamic get state => _state;
  String? get postalCode => _postalCode;
  String? get countryCode => _countryCode;
  Coordinates? get coordinates => _coordinates;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['street'] = _street;
    map['apartment'] = _apartment;
    map['city'] = _city;
    map['state'] = _state;
    map['postalCode'] = _postalCode;
    map['countryCode'] = _countryCode;
    if (_coordinates != null) {
      map['coordinates'] = _coordinates?.toJson();
    }
    return map;
  }

}

/// latitude : 51.5237
/// longitude : -0.1585

class Coordinates {
  Coordinates({
      num? latitude, 
      num? longitude,}){
    _latitude = latitude;
    _longitude = longitude;
}

  Coordinates.fromJson(dynamic json) {
    _latitude = json['latitude'];
    _longitude = json['longitude'];
  }
  num? _latitude;
  num? _longitude;
Coordinates copyWith({  num? latitude,
  num? longitude,
}) => Coordinates(  latitude: latitude ?? _latitude,
  longitude: longitude ?? _longitude,
);
  num? get latitude => _latitude;
  num? get longitude => _longitude;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['latitude'] = _latitude;
    map['longitude'] = _longitude;
    return map;
  }

}

/// customerId : "cust_44102"
/// firstName : "Alexandre"
/// lastName : "Martins"
/// email : "alex.martins@example.co.uk"
/// phone : "+447700900077"
/// isVerified : true
/// tags : ["vip","frequent_buyer","tech_enthusiast"]
/// preferences : {"marketingOptIn":false,"preferredLanguage":"en-GB"}

class Customer {
  Customer({
      String? customerId, 
      String? firstName, 
      String? lastName, 
      String? email, 
      String? phone, 
      bool? isVerified, 
      List<String>? tags, 
      Preferences? preferences,}){
    _customerId = customerId;
    _firstName = firstName;
    _lastName = lastName;
    _email = email;
    _phone = phone;
    _isVerified = isVerified;
    _tags = tags;
    _preferences = preferences;
}

  Customer.fromJson(dynamic json) {
    _customerId = json['customerId'];
    _firstName = json['firstName'];
    _lastName = json['lastName'];
    _email = json['email'];
    _phone = json['phone'];
    _isVerified = json['isVerified'];
    _tags = json['tags'] != null ? json['tags'].cast<String>() : [];
    _preferences = json['preferences'] != null ? Preferences.fromJson(json['preferences']) : null;
  }
  String? _customerId;
  String? _firstName;
  String? _lastName;
  String? _email;
  String? _phone;
  bool? _isVerified;
  List<String>? _tags;
  Preferences? _preferences;
Customer copyWith({  String? customerId,
  String? firstName,
  String? lastName,
  String? email,
  String? phone,
  bool? isVerified,
  List<String>? tags,
  Preferences? preferences,
}) => Customer(  customerId: customerId ?? _customerId,
  firstName: firstName ?? _firstName,
  lastName: lastName ?? _lastName,
  email: email ?? _email,
  phone: phone ?? _phone,
  isVerified: isVerified ?? _isVerified,
  tags: tags ?? _tags,
  preferences: preferences ?? _preferences,
);
  String? get customerId => _customerId;
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get email => _email;
  String? get phone => _phone;
  bool? get isVerified => _isVerified;
  List<String>? get tags => _tags;
  Preferences? get preferences => _preferences;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['customerId'] = _customerId;
    map['firstName'] = _firstName;
    map['lastName'] = _lastName;
    map['email'] = _email;
    map['phone'] = _phone;
    map['isVerified'] = _isVerified;
    map['tags'] = _tags;
    if (_preferences != null) {
      map['preferences'] = _preferences?.toJson();
    }
    return map;
  }

}

/// marketingOptIn : false
/// preferredLanguage : "en-GB"

class Preferences {
  Preferences({
      bool? marketingOptIn, 
      String? preferredLanguage,}){
    _marketingOptIn = marketingOptIn;
    _preferredLanguage = preferredLanguage;
}

  Preferences.fromJson(dynamic json) {
    _marketingOptIn = json['marketingOptIn'];
    _preferredLanguage = json['preferredLanguage'];
  }
  bool? _marketingOptIn;
  String? _preferredLanguage;
Preferences copyWith({  bool? marketingOptIn,
  String? preferredLanguage,
}) => Preferences(  marketingOptIn: marketingOptIn ?? _marketingOptIn,
  preferredLanguage: preferredLanguage ?? _preferredLanguage,
);
  bool? get marketingOptIn => _marketingOptIn;
  String? get preferredLanguage => _preferredLanguage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['marketingOptIn'] = _marketingOptIn;
    map['preferredLanguage'] = _preferredLanguage;
    return map;
  }

}

/// id : "org_77218392"
/// name : "Global Retail Corp"
/// taxId : "US-8829103-X"
/// settings : {"currency":"USD","timezone":"America/New_York","featuresEnabled":["beta_checkout","split_shipping","loyalty_rewards"]}

class Organization {
  Organization({
      String? id, 
      String? name, 
      String? taxId, 
      Settings? settings,}){
    _id = id;
    _name = name;
    _taxId = taxId;
    _settings = settings;
}

  Organization.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _taxId = json['taxId'];
    _settings = json['settings'] != null ? Settings.fromJson(json['settings']) : null;
  }
  String? _id;
  String? _name;
  String? _taxId;
  Settings? _settings;
Organization copyWith({  String? id,
  String? name,
  String? taxId,
  Settings? settings,
}) => Organization(  id: id ?? _id,
  name: name ?? _name,
  taxId: taxId ?? _taxId,
  settings: settings ?? _settings,
);
  String? get id => _id;
  String? get name => _name;
  String? get taxId => _taxId;
  Settings? get settings => _settings;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['taxId'] = _taxId;
    if (_settings != null) {
      map['settings'] = _settings?.toJson();
    }
    return map;
  }

}

/// currency : "USD"
/// timezone : "America/New_York"
/// featuresEnabled : ["beta_checkout","split_shipping","loyalty_rewards"]

class Settings {
  Settings({
      String? currency, 
      String? timezone, 
      List<String>? featuresEnabled,}){
    _currency = currency;
    _timezone = timezone;
    _featuresEnabled = featuresEnabled;
}

  Settings.fromJson(dynamic json) {
    _currency = json['currency'];
    _timezone = json['timezone'];
    _featuresEnabled = json['featuresEnabled'] != null ? json['featuresEnabled'].cast<String>() : [];
  }
  String? _currency;
  String? _timezone;
  List<String>? _featuresEnabled;
Settings copyWith({  String? currency,
  String? timezone,
  List<String>? featuresEnabled,
}) => Settings(  currency: currency ?? _currency,
  timezone: timezone ?? _timezone,
  featuresEnabled: featuresEnabled ?? _featuresEnabled,
);
  String? get currency => _currency;
  String? get timezone => _timezone;
  List<String>? get featuresEnabled => _featuresEnabled;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['currency'] = _currency;
    map['timezone'] = _timezone;
    map['featuresEnabled'] = _featuresEnabled;
    return map;
  }

}

/// currentPage : 1
/// totalPages : 24
/// pageSize : 50
/// totalRecords : 1184
/// links : {"self":"https://example.com","next":"https://example.com","prev":null}

class Pagination {
  Pagination({
      num? currentPage, 
      num? totalPages, 
      num? pageSize, 
      num? totalRecords, 
      Links? links,}){
    _currentPage = currentPage;
    _totalPages = totalPages;
    _pageSize = pageSize;
    _totalRecords = totalRecords;
    _links = links;
}

  Pagination.fromJson(dynamic json) {
    _currentPage = json['currentPage'];
    _totalPages = json['totalPages'];
    _pageSize = json['pageSize'];
    _totalRecords = json['totalRecords'];
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }
  num? _currentPage;
  num? _totalPages;
  num? _pageSize;
  num? _totalRecords;
  Links? _links;
Pagination copyWith({  num? currentPage,
  num? totalPages,
  num? pageSize,
  num? totalRecords,
  Links? links,
}) => Pagination(  currentPage: currentPage ?? _currentPage,
  totalPages: totalPages ?? _totalPages,
  pageSize: pageSize ?? _pageSize,
  totalRecords: totalRecords ?? _totalRecords,
  links: links ?? _links,
);
  num? get currentPage => _currentPage;
  num? get totalPages => _totalPages;
  num? get pageSize => _pageSize;
  num? get totalRecords => _totalRecords;
  Links? get links => _links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['currentPage'] = _currentPage;
    map['totalPages'] = _totalPages;
    map['pageSize'] = _pageSize;
    map['totalRecords'] = _totalRecords;
    if (_links != null) {
      map['links'] = _links?.toJson();
    }
    return map;
  }

}

/// self : "https://example.com"
/// next : "https://example.com"
/// prev : null

class Links {
  Links({
      String? self, 
      String? next, 
      dynamic prev,}){
    _self = self;
    _next = next;
    _prev = prev;
}

  Links.fromJson(dynamic json) {
    _self = json['self'];
    _next = json['next'];
    _prev = json['prev'];
  }
  String? _self;
  String? _next;
  dynamic _prev;
Links copyWith({  String? self,
  String? next,
  dynamic prev,
}) => Links(  self: self ?? _self,
  next: next ?? _next,
  prev: prev ?? _prev,
);
  String? get self => _self;
  String? get next => _next;
  dynamic get prev => _prev;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['self'] = _self;
    map['next'] = _next;
    map['prev'] = _prev;
    return map;
  }

}
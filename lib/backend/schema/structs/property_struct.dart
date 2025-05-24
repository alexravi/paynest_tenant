// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PropertyStruct extends BaseStruct {
  PropertyStruct({
    String? propertycode,
    String? ownerID,
    String? name,
    String? address,
    String? city,
    String? monthlyRent,
  })  : _propertycode = propertycode,
        _ownerID = ownerID,
        _name = name,
        _address = address,
        _city = city,
        _monthlyRent = monthlyRent;

  // "propertycode" field.
  String? _propertycode;
  String get propertycode => _propertycode ?? '';
  set propertycode(String? val) => _propertycode = val;

  bool hasPropertycode() => _propertycode != null;

  // "ownerID" field.
  String? _ownerID;
  String get ownerID => _ownerID ?? '';
  set ownerID(String? val) => _ownerID = val;

  bool hasOwnerID() => _ownerID != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;

  bool hasAddress() => _address != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;

  bool hasCity() => _city != null;

  // "monthlyRent" field.
  String? _monthlyRent;
  String get monthlyRent => _monthlyRent ?? '';
  set monthlyRent(String? val) => _monthlyRent = val;

  bool hasMonthlyRent() => _monthlyRent != null;

  static PropertyStruct fromMap(Map<String, dynamic> data) => PropertyStruct(
        propertycode: data['propertycode'] as String?,
        ownerID: data['ownerID'] as String?,
        name: data['name'] as String?,
        address: data['address'] as String?,
        city: data['city'] as String?,
        monthlyRent: data['monthlyRent'] as String?,
      );

  static PropertyStruct? maybeFromMap(dynamic data) =>
      data is Map ? PropertyStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'propertycode': _propertycode,
        'ownerID': _ownerID,
        'name': _name,
        'address': _address,
        'city': _city,
        'monthlyRent': _monthlyRent,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'propertycode': serializeParam(
          _propertycode,
          ParamType.String,
        ),
        'ownerID': serializeParam(
          _ownerID,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'monthlyRent': serializeParam(
          _monthlyRent,
          ParamType.String,
        ),
      }.withoutNulls;

  static PropertyStruct fromSerializableMap(Map<String, dynamic> data) =>
      PropertyStruct(
        propertycode: deserializeParam(
          data['propertycode'],
          ParamType.String,
          false,
        ),
        ownerID: deserializeParam(
          data['ownerID'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        monthlyRent: deserializeParam(
          data['monthlyRent'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PropertyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PropertyStruct &&
        propertycode == other.propertycode &&
        ownerID == other.ownerID &&
        name == other.name &&
        address == other.address &&
        city == other.city &&
        monthlyRent == other.monthlyRent;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([propertycode, ownerID, name, address, city, monthlyRent]);
}

PropertyStruct createPropertyStruct({
  String? propertycode,
  String? ownerID,
  String? name,
  String? address,
  String? city,
  String? monthlyRent,
}) =>
    PropertyStruct(
      propertycode: propertycode,
      ownerID: ownerID,
      name: name,
      address: address,
      city: city,
      monthlyRent: monthlyRent,
    );

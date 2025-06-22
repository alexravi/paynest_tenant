// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PropertyStruct extends BaseStruct {
  PropertyStruct({
    String? inviteCode,
    String? name,
    String? address,
    String? city,
    String? state,
    String? pincode,
    int? monthlyrent,
    String? description,
  })  : _inviteCode = inviteCode,
        _name = name,
        _address = address,
        _city = city,
        _state = state,
        _pincode = pincode,
        _monthlyrent = monthlyrent,
        _description = description;

  // "inviteCode" field.
  String? _inviteCode;
  String get inviteCode => _inviteCode ?? '';
  set inviteCode(String? val) => _inviteCode = val;

  bool hasInviteCode() => _inviteCode != null;

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

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  set state(String? val) => _state = val;

  bool hasState() => _state != null;

  // "pincode" field.
  String? _pincode;
  String get pincode => _pincode ?? '';
  set pincode(String? val) => _pincode = val;

  bool hasPincode() => _pincode != null;

  // "monthlyrent" field.
  int? _monthlyrent;
  int get monthlyrent => _monthlyrent ?? 0;
  set monthlyrent(int? val) => _monthlyrent = val;

  void incrementMonthlyrent(int amount) => monthlyrent = monthlyrent + amount;

  bool hasMonthlyrent() => _monthlyrent != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  static PropertyStruct fromMap(Map<String, dynamic> data) => PropertyStruct(
        inviteCode: data['inviteCode'] as String?,
        name: data['name'] as String?,
        address: data['address'] as String?,
        city: data['city'] as String?,
        state: data['state'] as String?,
        pincode: data['pincode'] as String?,
        monthlyrent: castToType<int>(data['monthlyrent']),
        description: data['description'] as String?,
      );

  static PropertyStruct? maybeFromMap(dynamic data) =>
      data is Map ? PropertyStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'inviteCode': _inviteCode,
        'name': _name,
        'address': _address,
        'city': _city,
        'state': _state,
        'pincode': _pincode,
        'monthlyrent': _monthlyrent,
        'description': _description,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'inviteCode': serializeParam(
          _inviteCode,
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
        'state': serializeParam(
          _state,
          ParamType.String,
        ),
        'pincode': serializeParam(
          _pincode,
          ParamType.String,
        ),
        'monthlyrent': serializeParam(
          _monthlyrent,
          ParamType.int,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
      }.withoutNulls;

  static PropertyStruct fromSerializableMap(Map<String, dynamic> data) =>
      PropertyStruct(
        inviteCode: deserializeParam(
          data['inviteCode'],
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
        state: deserializeParam(
          data['state'],
          ParamType.String,
          false,
        ),
        pincode: deserializeParam(
          data['pincode'],
          ParamType.String,
          false,
        ),
        monthlyrent: deserializeParam(
          data['monthlyrent'],
          ParamType.int,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PropertyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PropertyStruct &&
        inviteCode == other.inviteCode &&
        name == other.name &&
        address == other.address &&
        city == other.city &&
        state == other.state &&
        pincode == other.pincode &&
        monthlyrent == other.monthlyrent &&
        description == other.description;
  }

  @override
  int get hashCode => const ListEquality().hash([
        inviteCode,
        name,
        address,
        city,
        state,
        pincode,
        monthlyrent,
        description
      ]);
}

PropertyStruct createPropertyStruct({
  String? inviteCode,
  String? name,
  String? address,
  String? city,
  String? state,
  String? pincode,
  int? monthlyrent,
  String? description,
}) =>
    PropertyStruct(
      inviteCode: inviteCode,
      name: name,
      address: address,
      city: city,
      state: state,
      pincode: pincode,
      monthlyrent: monthlyrent,
      description: description,
    );

// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmergencyContactStruct extends BaseStruct {
  EmergencyContactStruct({
    String? name,
    String? phone,
    String? relationship,
  })  : _name = name,
        _phone = phone,
        _relationship = relationship;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;

  bool hasPhone() => _phone != null;

  // "relationship" field.
  String? _relationship;
  String get relationship => _relationship ?? '';
  set relationship(String? val) => _relationship = val;

  bool hasRelationship() => _relationship != null;

  static EmergencyContactStruct fromMap(Map<String, dynamic> data) =>
      EmergencyContactStruct(
        name: data['name'] as String?,
        phone: data['phone'] as String?,
        relationship: data['relationship'] as String?,
      );

  static EmergencyContactStruct? maybeFromMap(dynamic data) => data is Map
      ? EmergencyContactStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'phone': _phone,
        'relationship': _relationship,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'relationship': serializeParam(
          _relationship,
          ParamType.String,
        ),
      }.withoutNulls;

  static EmergencyContactStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      EmergencyContactStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        relationship: deserializeParam(
          data['relationship'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'EmergencyContactStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EmergencyContactStruct &&
        name == other.name &&
        phone == other.phone &&
        relationship == other.relationship;
  }

  @override
  int get hashCode => const ListEquality().hash([name, phone, relationship]);
}

EmergencyContactStruct createEmergencyContactStruct({
  String? name,
  String? phone,
  String? relationship,
}) =>
    EmergencyContactStruct(
      name: name,
      phone: phone,
      relationship: relationship,
    );

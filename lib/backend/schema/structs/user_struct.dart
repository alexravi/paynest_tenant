// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    String? phone,
    String? name,
    String? email,
    List<String>? emergencyContact,
    double? monthlyrent,
    double? currentrentPaid,
    double? dueAmount,
    String? currentPropertyId,
    bool? kycIsVerified,
  })  : _phone = phone,
        _name = name,
        _email = email,
        _emergencyContact = emergencyContact,
        _monthlyrent = monthlyrent,
        _currentrentPaid = currentrentPaid,
        _dueAmount = dueAmount,
        _currentPropertyId = currentPropertyId,
        _kycIsVerified = kycIsVerified;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;

  bool hasPhone() => _phone != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "emergencyContact" field.
  List<String>? _emergencyContact;
  List<String> get emergencyContact => _emergencyContact ?? const [];
  set emergencyContact(List<String>? val) => _emergencyContact = val;

  void updateEmergencyContact(Function(List<String>) updateFn) {
    updateFn(_emergencyContact ??= []);
  }

  bool hasEmergencyContact() => _emergencyContact != null;

  // "monthlyrent" field.
  double? _monthlyrent;
  double get monthlyrent => _monthlyrent ?? 0.0;
  set monthlyrent(double? val) => _monthlyrent = val;

  void incrementMonthlyrent(double amount) =>
      monthlyrent = monthlyrent + amount;

  bool hasMonthlyrent() => _monthlyrent != null;

  // "currentrentPaid" field.
  double? _currentrentPaid;
  double get currentrentPaid => _currentrentPaid ?? 0.0;
  set currentrentPaid(double? val) => _currentrentPaid = val;

  void incrementCurrentrentPaid(double amount) =>
      currentrentPaid = currentrentPaid + amount;

  bool hasCurrentrentPaid() => _currentrentPaid != null;

  // "dueAmount" field.
  double? _dueAmount;
  double get dueAmount => _dueAmount ?? 0.0;
  set dueAmount(double? val) => _dueAmount = val;

  void incrementDueAmount(double amount) => dueAmount = dueAmount + amount;

  bool hasDueAmount() => _dueAmount != null;

  // "currentPropertyId" field.
  String? _currentPropertyId;
  String get currentPropertyId => _currentPropertyId ?? '';
  set currentPropertyId(String? val) => _currentPropertyId = val;

  bool hasCurrentPropertyId() => _currentPropertyId != null;

  // "kycIsVerified" field.
  bool? _kycIsVerified;
  bool get kycIsVerified => _kycIsVerified ?? false;
  set kycIsVerified(bool? val) => _kycIsVerified = val;

  bool hasKycIsVerified() => _kycIsVerified != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        phone: data['phone'] as String?,
        name: data['name'] as String?,
        email: data['email'] as String?,
        emergencyContact: getDataList(data['emergencyContact']),
        monthlyrent: castToType<double>(data['monthlyrent']),
        currentrentPaid: castToType<double>(data['currentrentPaid']),
        dueAmount: castToType<double>(data['dueAmount']),
        currentPropertyId: data['currentPropertyId'] as String?,
        kycIsVerified: data['kycIsVerified'] as bool?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'phone': _phone,
        'name': _name,
        'email': _email,
        'emergencyContact': _emergencyContact,
        'monthlyrent': _monthlyrent,
        'currentrentPaid': _currentrentPaid,
        'dueAmount': _dueAmount,
        'currentPropertyId': _currentPropertyId,
        'kycIsVerified': _kycIsVerified,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'emergencyContact': serializeParam(
          _emergencyContact,
          ParamType.String,
          isList: true,
        ),
        'monthlyrent': serializeParam(
          _monthlyrent,
          ParamType.double,
        ),
        'currentrentPaid': serializeParam(
          _currentrentPaid,
          ParamType.double,
        ),
        'dueAmount': serializeParam(
          _dueAmount,
          ParamType.double,
        ),
        'currentPropertyId': serializeParam(
          _currentPropertyId,
          ParamType.String,
        ),
        'kycIsVerified': serializeParam(
          _kycIsVerified,
          ParamType.bool,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        emergencyContact: deserializeParam<String>(
          data['emergencyContact'],
          ParamType.String,
          true,
        ),
        monthlyrent: deserializeParam(
          data['monthlyrent'],
          ParamType.double,
          false,
        ),
        currentrentPaid: deserializeParam(
          data['currentrentPaid'],
          ParamType.double,
          false,
        ),
        dueAmount: deserializeParam(
          data['dueAmount'],
          ParamType.double,
          false,
        ),
        currentPropertyId: deserializeParam(
          data['currentPropertyId'],
          ParamType.String,
          false,
        ),
        kycIsVerified: deserializeParam(
          data['kycIsVerified'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is UserStruct &&
        phone == other.phone &&
        name == other.name &&
        email == other.email &&
        listEquality.equals(emergencyContact, other.emergencyContact) &&
        monthlyrent == other.monthlyrent &&
        currentrentPaid == other.currentrentPaid &&
        dueAmount == other.dueAmount &&
        currentPropertyId == other.currentPropertyId &&
        kycIsVerified == other.kycIsVerified;
  }

  @override
  int get hashCode => const ListEquality().hash([
        phone,
        name,
        email,
        emergencyContact,
        monthlyrent,
        currentrentPaid,
        dueAmount,
        currentPropertyId,
        kycIsVerified
      ]);
}

UserStruct createUserStruct({
  String? phone,
  String? name,
  String? email,
  double? monthlyrent,
  double? currentrentPaid,
  double? dueAmount,
  String? currentPropertyId,
  bool? kycIsVerified,
}) =>
    UserStruct(
      phone: phone,
      name: name,
      email: email,
      monthlyrent: monthlyrent,
      currentrentPaid: currentrentPaid,
      dueAmount: dueAmount,
      currentPropertyId: currentPropertyId,
      kycIsVerified: kycIsVerified,
    );

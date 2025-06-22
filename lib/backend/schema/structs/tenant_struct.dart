// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TenantStruct extends BaseStruct {
  TenantStruct({
    String? phoneNumber,
    String? name,
    String? email,
    String? gender,
    String? bio,
    String? maritalStatus,
    bool? isNew,
    EmergencyContactStruct? emergencyContact,
    int? monthlyRent,
    int? currentRentPaid,
    int? dueAmount,
    bool? kycIsVerified,
    DateTime? createdAt,
  })  : _phoneNumber = phoneNumber,
        _name = name,
        _email = email,
        _gender = gender,
        _bio = bio,
        _maritalStatus = maritalStatus,
        _isNew = isNew,
        _emergencyContact = emergencyContact,
        _monthlyRent = monthlyRent,
        _currentRentPaid = currentRentPaid,
        _dueAmount = dueAmount,
        _kycIsVerified = kycIsVerified,
        _createdAt = createdAt;

  // "phoneNumber" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  set phoneNumber(String? val) => _phoneNumber = val;

  bool hasPhoneNumber() => _phoneNumber != null;

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

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  set gender(String? val) => _gender = val;

  bool hasGender() => _gender != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  set bio(String? val) => _bio = val;

  bool hasBio() => _bio != null;

  // "maritalStatus" field.
  String? _maritalStatus;
  String get maritalStatus => _maritalStatus ?? '';
  set maritalStatus(String? val) => _maritalStatus = val;

  bool hasMaritalStatus() => _maritalStatus != null;

  // "isNew" field.
  bool? _isNew;
  bool get isNew => _isNew ?? false;
  set isNew(bool? val) => _isNew = val;

  bool hasIsNew() => _isNew != null;

  // "emergencyContact" field.
  EmergencyContactStruct? _emergencyContact;
  EmergencyContactStruct get emergencyContact =>
      _emergencyContact ?? EmergencyContactStruct();
  set emergencyContact(EmergencyContactStruct? val) => _emergencyContact = val;

  void updateEmergencyContact(Function(EmergencyContactStruct) updateFn) {
    updateFn(_emergencyContact ??= EmergencyContactStruct());
  }

  bool hasEmergencyContact() => _emergencyContact != null;

  // "monthlyRent" field.
  int? _monthlyRent;
  int get monthlyRent => _monthlyRent ?? 0;
  set monthlyRent(int? val) => _monthlyRent = val;

  void incrementMonthlyRent(int amount) => monthlyRent = monthlyRent + amount;

  bool hasMonthlyRent() => _monthlyRent != null;

  // "currentRentPaid" field.
  int? _currentRentPaid;
  int get currentRentPaid => _currentRentPaid ?? 0;
  set currentRentPaid(int? val) => _currentRentPaid = val;

  void incrementCurrentRentPaid(int amount) =>
      currentRentPaid = currentRentPaid + amount;

  bool hasCurrentRentPaid() => _currentRentPaid != null;

  // "dueAmount" field.
  int? _dueAmount;
  int get dueAmount => _dueAmount ?? 0;
  set dueAmount(int? val) => _dueAmount = val;

  void incrementDueAmount(int amount) => dueAmount = dueAmount + amount;

  bool hasDueAmount() => _dueAmount != null;

  // "kycIsVerified" field.
  bool? _kycIsVerified;
  bool get kycIsVerified => _kycIsVerified ?? false;
  set kycIsVerified(bool? val) => _kycIsVerified = val;

  bool hasKycIsVerified() => _kycIsVerified != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  set createdAt(DateTime? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  static TenantStruct fromMap(Map<String, dynamic> data) => TenantStruct(
        phoneNumber: data['phoneNumber'] as String?,
        name: data['name'] as String?,
        email: data['email'] as String?,
        gender: data['gender'] as String?,
        bio: data['bio'] as String?,
        maritalStatus: data['maritalStatus'] as String?,
        isNew: data['isNew'] as bool?,
        emergencyContact: data['emergencyContact'] is EmergencyContactStruct
            ? data['emergencyContact']
            : EmergencyContactStruct.maybeFromMap(data['emergencyContact']),
        monthlyRent: castToType<int>(data['monthlyRent']),
        currentRentPaid: castToType<int>(data['currentRentPaid']),
        dueAmount: castToType<int>(data['dueAmount']),
        kycIsVerified: data['kycIsVerified'] as bool?,
        createdAt: data['createdAt'] as DateTime?,
      );

  static TenantStruct? maybeFromMap(dynamic data) =>
      data is Map ? TenantStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'phoneNumber': _phoneNumber,
        'name': _name,
        'email': _email,
        'gender': _gender,
        'bio': _bio,
        'maritalStatus': _maritalStatus,
        'isNew': _isNew,
        'emergencyContact': _emergencyContact?.toMap(),
        'monthlyRent': _monthlyRent,
        'currentRentPaid': _currentRentPaid,
        'dueAmount': _dueAmount,
        'kycIsVerified': _kycIsVerified,
        'createdAt': _createdAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'phoneNumber': serializeParam(
          _phoneNumber,
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
        'gender': serializeParam(
          _gender,
          ParamType.String,
        ),
        'bio': serializeParam(
          _bio,
          ParamType.String,
        ),
        'maritalStatus': serializeParam(
          _maritalStatus,
          ParamType.String,
        ),
        'isNew': serializeParam(
          _isNew,
          ParamType.bool,
        ),
        'emergencyContact': serializeParam(
          _emergencyContact,
          ParamType.DataStruct,
        ),
        'monthlyRent': serializeParam(
          _monthlyRent,
          ParamType.int,
        ),
        'currentRentPaid': serializeParam(
          _currentRentPaid,
          ParamType.int,
        ),
        'dueAmount': serializeParam(
          _dueAmount,
          ParamType.int,
        ),
        'kycIsVerified': serializeParam(
          _kycIsVerified,
          ParamType.bool,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static TenantStruct fromSerializableMap(Map<String, dynamic> data) =>
      TenantStruct(
        phoneNumber: deserializeParam(
          data['phoneNumber'],
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
        gender: deserializeParam(
          data['gender'],
          ParamType.String,
          false,
        ),
        bio: deserializeParam(
          data['bio'],
          ParamType.String,
          false,
        ),
        maritalStatus: deserializeParam(
          data['maritalStatus'],
          ParamType.String,
          false,
        ),
        isNew: deserializeParam(
          data['isNew'],
          ParamType.bool,
          false,
        ),
        emergencyContact: deserializeStructParam(
          data['emergencyContact'],
          ParamType.DataStruct,
          false,
          structBuilder: EmergencyContactStruct.fromSerializableMap,
        ),
        monthlyRent: deserializeParam(
          data['monthlyRent'],
          ParamType.int,
          false,
        ),
        currentRentPaid: deserializeParam(
          data['currentRentPaid'],
          ParamType.int,
          false,
        ),
        dueAmount: deserializeParam(
          data['dueAmount'],
          ParamType.int,
          false,
        ),
        kycIsVerified: deserializeParam(
          data['kycIsVerified'],
          ParamType.bool,
          false,
        ),
        createdAt: deserializeParam(
          data['createdAt'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'TenantStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TenantStruct &&
        phoneNumber == other.phoneNumber &&
        name == other.name &&
        email == other.email &&
        gender == other.gender &&
        bio == other.bio &&
        maritalStatus == other.maritalStatus &&
        isNew == other.isNew &&
        emergencyContact == other.emergencyContact &&
        monthlyRent == other.monthlyRent &&
        currentRentPaid == other.currentRentPaid &&
        dueAmount == other.dueAmount &&
        kycIsVerified == other.kycIsVerified &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        phoneNumber,
        name,
        email,
        gender,
        bio,
        maritalStatus,
        isNew,
        emergencyContact,
        monthlyRent,
        currentRentPaid,
        dueAmount,
        kycIsVerified,
        createdAt
      ]);
}

TenantStruct createTenantStruct({
  String? phoneNumber,
  String? name,
  String? email,
  String? gender,
  String? bio,
  String? maritalStatus,
  bool? isNew,
  EmergencyContactStruct? emergencyContact,
  int? monthlyRent,
  int? currentRentPaid,
  int? dueAmount,
  bool? kycIsVerified,
  DateTime? createdAt,
}) =>
    TenantStruct(
      phoneNumber: phoneNumber,
      name: name,
      email: email,
      gender: gender,
      bio: bio,
      maritalStatus: maritalStatus,
      isNew: isNew,
      emergencyContact: emergencyContact ?? EmergencyContactStruct(),
      monthlyRent: monthlyRent,
      currentRentPaid: currentRentPaid,
      dueAmount: dueAmount,
      kycIsVerified: kycIsVerified,
      createdAt: createdAt,
    );

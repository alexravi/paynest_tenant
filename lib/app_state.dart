import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _tenant = prefs
              .getStringList('ff_tenant')
              ?.map((x) {
                try {
                  return UserStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _tenant;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<UserStruct> _tenant = [];
  List<UserStruct> get tenant => _tenant;
  set tenant(List<UserStruct> value) {
    _tenant = value;
    prefs.setStringList('ff_tenant', value.map((x) => x.serialize()).toList());
  }

  void addToTenant(UserStruct value) {
    tenant.add(value);
    prefs.setStringList(
        'ff_tenant', _tenant.map((x) => x.serialize()).toList());
  }

  void removeFromTenant(UserStruct value) {
    tenant.remove(value);
    prefs.setStringList(
        'ff_tenant', _tenant.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromTenant(int index) {
    tenant.removeAt(index);
    prefs.setStringList(
        'ff_tenant', _tenant.map((x) => x.serialize()).toList());
  }

  void updateTenantAtIndex(
    int index,
    UserStruct Function(UserStruct) updateFn,
  ) {
    tenant[index] = updateFn(_tenant[index]);
    prefs.setStringList(
        'ff_tenant', _tenant.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInTenant(int index, UserStruct value) {
    tenant.insert(index, value);
    prefs.setStringList(
        'ff_tenant', _tenant.map((x) => x.serialize()).toList());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

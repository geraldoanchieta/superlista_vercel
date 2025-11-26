// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SearchmodelStruct extends BaseStruct {
  SearchmodelStruct({
    String? name,
  }) : _name = name;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  static SearchmodelStruct fromMap(Map<String, dynamic> data) =>
      SearchmodelStruct(
        name: data['name'] as String?,
      );

  static SearchmodelStruct? maybeFromMap(dynamic data) => data is Map
      ? SearchmodelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
      }.withoutNulls;

  static SearchmodelStruct fromSerializableMap(Map<String, dynamic> data) =>
      SearchmodelStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SearchmodelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SearchmodelStruct && name == other.name;
  }

  @override
  int get hashCode => const ListEquality().hash([name]);
}

SearchmodelStruct createSearchmodelStruct({
  String? name,
}) =>
    SearchmodelStruct(
      name: name,
    );

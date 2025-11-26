// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LoginModelStruct extends BaseStruct {
  LoginModelStruct({
    String? firstName,
    String? lastName,
    String? emailAddress,
    String? password,
    String? phoneNumber,
  })  : _firstName = firstName,
        _lastName = lastName,
        _emailAddress = emailAddress,
        _password = password,
        _phoneNumber = phoneNumber;

  // "firstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  set firstName(String? val) => _firstName = val;

  bool hasFirstName() => _firstName != null;

  // "lastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  set lastName(String? val) => _lastName = val;

  bool hasLastName() => _lastName != null;

  // "emailAddress" field.
  String? _emailAddress;
  String get emailAddress => _emailAddress ?? '';
  set emailAddress(String? val) => _emailAddress = val;

  bool hasEmailAddress() => _emailAddress != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  set password(String? val) => _password = val;

  bool hasPassword() => _password != null;

  // "phoneNumber" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  set phoneNumber(String? val) => _phoneNumber = val;

  bool hasPhoneNumber() => _phoneNumber != null;

  static LoginModelStruct fromMap(Map<String, dynamic> data) =>
      LoginModelStruct(
        firstName: data['firstName'] as String?,
        lastName: data['lastName'] as String?,
        emailAddress: data['emailAddress'] as String?,
        password: data['password'] as String?,
        phoneNumber: data['phoneNumber'] as String?,
      );

  static LoginModelStruct? maybeFromMap(dynamic data) => data is Map
      ? LoginModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'firstName': _firstName,
        'lastName': _lastName,
        'emailAddress': _emailAddress,
        'password': _password,
        'phoneNumber': _phoneNumber,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'firstName': serializeParam(
          _firstName,
          ParamType.String,
        ),
        'lastName': serializeParam(
          _lastName,
          ParamType.String,
        ),
        'emailAddress': serializeParam(
          _emailAddress,
          ParamType.String,
        ),
        'password': serializeParam(
          _password,
          ParamType.String,
        ),
        'phoneNumber': serializeParam(
          _phoneNumber,
          ParamType.String,
        ),
      }.withoutNulls;

  static LoginModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      LoginModelStruct(
        firstName: deserializeParam(
          data['firstName'],
          ParamType.String,
          false,
        ),
        lastName: deserializeParam(
          data['lastName'],
          ParamType.String,
          false,
        ),
        emailAddress: deserializeParam(
          data['emailAddress'],
          ParamType.String,
          false,
        ),
        password: deserializeParam(
          data['password'],
          ParamType.String,
          false,
        ),
        phoneNumber: deserializeParam(
          data['phoneNumber'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LoginModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LoginModelStruct &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        emailAddress == other.emailAddress &&
        password == other.password &&
        phoneNumber == other.phoneNumber;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([firstName, lastName, emailAddress, password, phoneNumber]);
}

LoginModelStruct createLoginModelStruct({
  String? firstName,
  String? lastName,
  String? emailAddress,
  String? password,
  String? phoneNumber,
}) =>
    LoginModelStruct(
      firstName: firstName,
      lastName: lastName,
      emailAddress: emailAddress,
      password: password,
      phoneNumber: phoneNumber,
    );

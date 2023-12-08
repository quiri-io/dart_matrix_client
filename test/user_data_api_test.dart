//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for UserDataApi
void main() {
  // final instance = UserDataApi();

  group('tests for UserDataApi', () {
    // Get some account data for the user.
    //
    // Get some account data for the client. This config is only visible to the user that set the account data.
    //
    //Future<Object> getAccountData(String userId, String type) async
    test('test getAccountData', () async {
      // TODO
    });

    // Get some account data for the user that is specific to a room.
    //
    // Get some account data for the client on a given room. This config is only visible to the user that set the account data.
    //
    //Future<Object> getAccountDataPerRoom(String userId, String roomId, String type) async
    test('test getAccountDataPerRoom', () async {
      // TODO
    });

    // Set some account data for the user.
    //
    // Set some account data for the client. This config is only visible to the user that set the account data. The config will be available to clients through the top-level `account_data` field in the homeserver response to [/sync](#get_matrixclientv3sync).
    //
    //Future<Object> setAccountData(String userId, String type, Object body) async
    test('test setAccountData', () async {
      // TODO
    });

    // Set some account data for the user that is specific to a room.
    //
    // Set some account data for the client on a given room. This config is only visible to the user that set the account data. The config will be delivered to clients in the per-room entries via [/sync](#get_matrixclientv3sync).
    //
    //Future<Object> setAccountDataPerRoom(String userId, String roomId, String type, Object body) async
    test('test setAccountDataPerRoom', () async {
      // TODO
    });

  });
}

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class UserDataApi {
  UserDataApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get some account data for the user.
  ///
  /// Get some account data for the client. This config is only visible to the user that set the account data.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The ID of the user to get account data for. The access token must be authorized to make requests for this user ID.
  ///
  /// * [String] type (required):
  ///   The event type of the account data to get. Custom types should be namespaced to avoid clashes.
  Future<Response> getAccountDataWithHttpInfo(String userId, String type,) async {
    // ignore: prefer_const_declarations
    final path = r'/user/{userId}/account_data/{type}'
      .replaceAll('{userId}', userId)
      .replaceAll('{type}', type);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get some account data for the user.
  ///
  /// Get some account data for the client. This config is only visible to the user that set the account data.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The ID of the user to get account data for. The access token must be authorized to make requests for this user ID.
  ///
  /// * [String] type (required):
  ///   The event type of the account data to get. Custom types should be namespaced to avoid clashes.
  Future<Object?> getAccountData(String userId, String type,) async {
    final response = await getAccountDataWithHttpInfo(userId, type,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Get some account data for the user that is specific to a room.
  ///
  /// Get some account data for the client on a given room. This config is only visible to the user that set the account data.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The ID of the user to get account data for. The access token must be authorized to make requests for this user ID.
  ///
  /// * [String] roomId (required):
  ///   The ID of the room to get account data for.
  ///
  /// * [String] type (required):
  ///   The event type of the account data to get. Custom types should be namespaced to avoid clashes.
  Future<Response> getAccountDataPerRoomWithHttpInfo(String userId, String roomId, String type,) async {
    // ignore: prefer_const_declarations
    final path = r'/user/{userId}/rooms/{roomId}/account_data/{type}'
      .replaceAll('{userId}', userId)
      .replaceAll('{roomId}', roomId)
      .replaceAll('{type}', type);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get some account data for the user that is specific to a room.
  ///
  /// Get some account data for the client on a given room. This config is only visible to the user that set the account data.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The ID of the user to get account data for. The access token must be authorized to make requests for this user ID.
  ///
  /// * [String] roomId (required):
  ///   The ID of the room to get account data for.
  ///
  /// * [String] type (required):
  ///   The event type of the account data to get. Custom types should be namespaced to avoid clashes.
  Future<Object?> getAccountDataPerRoom(String userId, String roomId, String type,) async {
    final response = await getAccountDataPerRoomWithHttpInfo(userId, roomId, type,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Set some account data for the user.
  ///
  /// Set some account data for the client. This config is only visible to the user that set the account data. The config will be available to clients through the top-level `account_data` field in the homeserver response to [/sync](#get_matrixclientv3sync).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The ID of the user to set account data for. The access token must be authorized to make requests for this user ID.
  ///
  /// * [String] type (required):
  ///   The event type of the account data to set. Custom types should be namespaced to avoid clashes.
  ///
  /// * [Object] body (required):
  ///   The content of the account data.
  Future<Response> setAccountDataWithHttpInfo(String userId, String type, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/user/{userId}/account_data/{type}'
      .replaceAll('{userId}', userId)
      .replaceAll('{type}', type);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Set some account data for the user.
  ///
  /// Set some account data for the client. This config is only visible to the user that set the account data. The config will be available to clients through the top-level `account_data` field in the homeserver response to [/sync](#get_matrixclientv3sync).
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The ID of the user to set account data for. The access token must be authorized to make requests for this user ID.
  ///
  /// * [String] type (required):
  ///   The event type of the account data to set. Custom types should be namespaced to avoid clashes.
  ///
  /// * [Object] body (required):
  ///   The content of the account data.
  Future<Object?> setAccountData(String userId, String type, Object body,) async {
    final response = await setAccountDataWithHttpInfo(userId, type, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Set some account data for the user that is specific to a room.
  ///
  /// Set some account data for the client on a given room. This config is only visible to the user that set the account data. The config will be delivered to clients in the per-room entries via [/sync](#get_matrixclientv3sync).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The ID of the user to set account data for. The access token must be authorized to make requests for this user ID.
  ///
  /// * [String] roomId (required):
  ///   The ID of the room to set account data on.
  ///
  /// * [String] type (required):
  ///   The event type of the account data to set. Custom types should be namespaced to avoid clashes.
  ///
  /// * [Object] body (required):
  ///   The content of the account data.
  Future<Response> setAccountDataPerRoomWithHttpInfo(String userId, String roomId, String type, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/user/{userId}/rooms/{roomId}/account_data/{type}'
      .replaceAll('{userId}', userId)
      .replaceAll('{roomId}', roomId)
      .replaceAll('{type}', type);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Set some account data for the user that is specific to a room.
  ///
  /// Set some account data for the client on a given room. This config is only visible to the user that set the account data. The config will be delivered to clients in the per-room entries via [/sync](#get_matrixclientv3sync).
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The ID of the user to set account data for. The access token must be authorized to make requests for this user ID.
  ///
  /// * [String] roomId (required):
  ///   The ID of the room to set account data on.
  ///
  /// * [String] type (required):
  ///   The event type of the account data to set. Custom types should be namespaced to avoid clashes.
  ///
  /// * [Object] body (required):
  ///   The content of the account data.
  Future<Object?> setAccountDataPerRoom(String userId, String roomId, String type, Object body,) async {
    final response = await setAccountDataPerRoomWithHttpInfo(userId, roomId, type, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }
}

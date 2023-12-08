# openapi.api.UserDataApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://localhost:8008/_matrix/client/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAccountData**](UserDataApi.md#getaccountdata) | **GET** /user/{userId}/account_data/{type} | Get some account data for the user.
[**getAccountDataPerRoom**](UserDataApi.md#getaccountdataperroom) | **GET** /user/{userId}/rooms/{roomId}/account_data/{type} | Get some account data for the user that is specific to a room.
[**setAccountData**](UserDataApi.md#setaccountdata) | **PUT** /user/{userId}/account_data/{type} | Set some account data for the user.
[**setAccountDataPerRoom**](UserDataApi.md#setaccountdataperroom) | **PUT** /user/{userId}/rooms/{roomId}/account_data/{type} | Set some account data for the user that is specific to a room.


# **getAccountData**
> Object getAccountData(userId, type)

Get some account data for the user.

Get some account data for the client. This config is only visible to the user that set the account data.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: accessToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('accessToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('accessToken').apiKeyPrefix = 'Bearer';

final api_instance = UserDataApi();
final userId = @alice:example.com; // String | The ID of the user to get account data for. The access token must be authorized to make requests for this user ID.
final type = org.example.custom.config; // String | The event type of the account data to get. Custom types should be namespaced to avoid clashes.

try {
    final result = api_instance.getAccountData(userId, type);
    print(result);
} catch (e) {
    print('Exception when calling UserDataApi->getAccountData: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The ID of the user to get account data for. The access token must be authorized to make requests for this user ID. | 
 **type** | **String**| The event type of the account data to get. Custom types should be namespaced to avoid clashes. | 

### Return type

[**Object**](Object.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountDataPerRoom**
> Object getAccountDataPerRoom(userId, roomId, type)

Get some account data for the user that is specific to a room.

Get some account data for the client on a given room. This config is only visible to the user that set the account data.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: accessToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('accessToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('accessToken').apiKeyPrefix = 'Bearer';

final api_instance = UserDataApi();
final userId = @alice:example.com; // String | The ID of the user to get account data for. The access token must be authorized to make requests for this user ID.
final roomId = !726s6s6q:example.com; // String | The ID of the room to get account data for.
final type = org.example.custom.room.config; // String | The event type of the account data to get. Custom types should be namespaced to avoid clashes.

try {
    final result = api_instance.getAccountDataPerRoom(userId, roomId, type);
    print(result);
} catch (e) {
    print('Exception when calling UserDataApi->getAccountDataPerRoom: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The ID of the user to get account data for. The access token must be authorized to make requests for this user ID. | 
 **roomId** | **String**| The ID of the room to get account data for. | 
 **type** | **String**| The event type of the account data to get. Custom types should be namespaced to avoid clashes. | 

### Return type

[**Object**](Object.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setAccountData**
> Object setAccountData(userId, type, body)

Set some account data for the user.

Set some account data for the client. This config is only visible to the user that set the account data. The config will be available to clients through the top-level `account_data` field in the homeserver response to [/sync](#get_matrixclientv3sync).

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: accessToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('accessToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('accessToken').apiKeyPrefix = 'Bearer';

final api_instance = UserDataApi();
final userId = @alice:example.com; // String | The ID of the user to set account data for. The access token must be authorized to make requests for this user ID.
final type = org.example.custom.config; // String | The event type of the account data to set. Custom types should be namespaced to avoid clashes.
final body = Object(); // Object | The content of the account data.

try {
    final result = api_instance.setAccountData(userId, type, body);
    print(result);
} catch (e) {
    print('Exception when calling UserDataApi->setAccountData: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The ID of the user to set account data for. The access token must be authorized to make requests for this user ID. | 
 **type** | **String**| The event type of the account data to set. Custom types should be namespaced to avoid clashes. | 
 **body** | **Object**| The content of the account data. | 

### Return type

[**Object**](Object.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setAccountDataPerRoom**
> Object setAccountDataPerRoom(userId, roomId, type, body)

Set some account data for the user that is specific to a room.

Set some account data for the client on a given room. This config is only visible to the user that set the account data. The config will be delivered to clients in the per-room entries via [/sync](#get_matrixclientv3sync).

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: accessToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('accessToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('accessToken').apiKeyPrefix = 'Bearer';

final api_instance = UserDataApi();
final userId = @alice:example.com; // String | The ID of the user to set account data for. The access token must be authorized to make requests for this user ID.
final roomId = !726s6s6q:example.com; // String | The ID of the room to set account data on.
final type = org.example.custom.room.config; // String | The event type of the account data to set. Custom types should be namespaced to avoid clashes.
final body = Object(); // Object | The content of the account data.

try {
    final result = api_instance.setAccountDataPerRoom(userId, roomId, type, body);
    print(result);
} catch (e) {
    print('Exception when calling UserDataApi->setAccountDataPerRoom: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The ID of the user to set account data for. The access token must be authorized to make requests for this user ID. | 
 **roomId** | **String**| The ID of the room to set account data on. | 
 **type** | **String**| The event type of the account data to set. Custom types should be namespaced to avoid clashes. | 
 **body** | **Object**| The content of the account data. | 

### Return type

[**Object**](Object.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


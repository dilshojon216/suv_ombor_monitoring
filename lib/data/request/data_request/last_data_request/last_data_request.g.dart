// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_data_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LastDataRequest _$LastDataRequestFromJson(Map<String, dynamic> json) =>
    _LastDataRequest(
      page: (json['page'] as num).toInt(),
      perPage: (json['perPage'] as num).toInt(),
    );

Map<String, dynamic> _$LastDataRequestToJson(_LastDataRequest instance) =>
    <String, dynamic>{'page': instance.page, 'perPage': instance.perPage};

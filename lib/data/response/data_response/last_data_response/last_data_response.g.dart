// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LastDataResponse _$LastDataResponseFromJson(Map<String, dynamic> json) =>
    _LastDataResponse(
      totalDocs: (json['totalDocs'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
      currentPage: (json['currentPage'] as num).toInt(),
      nextPage: (json['nextPage'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => LastData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LastDataResponseToJson(_LastDataResponse instance) =>
    <String, dynamic>{
      'totalDocs': instance.totalDocs,
      'totalPages': instance.totalPages,
      'currentPage': instance.currentPage,
      'nextPage': instance.nextPage,
      'data': instance.data,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_record_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionRecordModel _$TransactionRecordModelFromJson(
  Map<String, dynamic> json,
) => _TransactionRecordModel(
  id: json['id'] as String,
  title: json['title'] as String,
  date: DateTime.parse(json['date'] as String),
  amount: (json['amount'] as num).toDouble(),
  category: json['category'] as String,
  type: json['type'] as String?,
  note: json['note'] as String?,
);

Map<String, dynamic> _$TransactionRecordModelToJson(
  _TransactionRecordModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'date': instance.date.toIso8601String(),
  'amount': instance.amount,
  'category': instance.category,
  'type': instance.type,
  'note': instance.note,
};

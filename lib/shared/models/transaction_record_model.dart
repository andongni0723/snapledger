import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_record_model.freezed.dart';

part 'transaction_record_model.g.dart';

@freezed
abstract class TransactionRecordModel with _$TransactionRecordModel {
  const factory TransactionRecordModel({
    required String id,
    required String title,
    required DateTime date,
    required double amount,
    required String category,
    String? type,
    String? note,
  }) = _TransactionRecordModel;

  factory TransactionRecordModel.fromJson(Map<String, dynamic> json) => _$TransactionRecordModelFromJson(json);
}

// flutter pub run build_runner build --delete-conflicting-outputs

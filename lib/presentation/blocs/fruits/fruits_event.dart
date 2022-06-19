part of 'fruits_bloc.dart';

@freezed
class FruitsEvent with _$FruitsEvent {
  const factory FruitsEvent.loadFruits() = LoadFruits;
}

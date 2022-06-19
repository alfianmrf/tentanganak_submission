import 'dart:async';
import 'dart:collection';
import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;
import 'package:tentanganak_submission/core/constant/constant.dart';
import '../../models/models.dart';

part 'fruits_bloc.freezed.dart';
part 'fruits_event.dart';
part 'fruits_state.dart';


var _initial = const FruitsState.initial(
  shared: FruitsStateShared(
    fruitsLoadingState: FruitsLoadingState.loading,
    fruits: [],
    imageReferences: {},
    mostFruitsKey: null,
    mostFruitsValue: null,
  ));

class FruitsBloc extends Bloc<FruitsEvent, FruitsState> {

  Future<void> _onEvent(FruitsEvent event, Emitter<FruitsState> emit) async {
    await event.when(
      loadFruits: () async {
        List<Fruit> fruits = [];
        Map<String, String> imageReferences;
        String mostFruitsKey;
        int mostFruitsValue;
        try {
          Uri loadFruitsUrl = Uri.parse(AppStrings.loadFruitsUrl);
          Map<String, int> dataCount = {};

          var param = <String, dynamic>{
            'imageReferences': true,
            'referenceId': '1650165235',
          };

          final result = await http.post(
            loadFruitsUrl,
            body: json.encode(param),
          );

          if (result.statusCode == 200) {
            final responseJson = json.decode(result.body);
            for (Map<String, dynamic> item in responseJson['data']['fruits']) {
              fruits.add(Fruit.fromJson(item));
              if(dataCount[item['name']] == null) {
                dataCount[item['name']] = 1;
              } else {
                int tmpDataCount = dataCount[item['name']]! + 1;
                dataCount[item['name']] = tmpDataCount;
              }
            }

            var sortedKeys = dataCount.keys.toList(growable:false)
              ..sort((k1, k2) => dataCount[k1]!.compareTo(dataCount[k2]!));
            LinkedHashMap sortedMap = LinkedHashMap
                .fromIterable(sortedKeys, key: (k) => k, value: (k) => dataCount[k]);

            mostFruitsKey = sortedMap.keys.toList()[sortedMap.keys.length-1];
            mostFruitsValue = sortedMap.values.toList()[sortedMap.values.length-1];

            imageReferences = Map<String, String>.from(responseJson['data']['imagesReferences']);
            emit((state.copyWith.shared(
              fruitsLoadingState: FruitsLoadingState.loaded,
              fruits: fruits,
              imageReferences: imageReferences,
              mostFruitsKey: mostFruitsKey,
              mostFruitsValue: mostFruitsValue,
            )));
          } else {
            emit((state.copyWith.shared(
              fruitsLoadingState: FruitsLoadingState.error,
            )));
          }
        } catch (e) {
          emit((state.copyWith.shared(
            fruitsLoadingState: FruitsLoadingState.error,
          )));
        }
      },
    );
  }

  FruitsBloc() : super(_initial) {
    on<FruitsEvent>(_onEvent);
  }
}

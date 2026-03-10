import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

part 'map_cubit.freezed.dart';
part 'map_state.dart';

class MapCubit extends Cubit<MapState> {
  final Logger logger;
  // late final MapboxMap? _map;

  MapCubit({required this.logger}) : super(const MapState());

  // void onMapCreated(MapboxMap map) async {
  //   _map = map;
  // }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locations_wrapper.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LocationsDataHolderAdapter extends TypeAdapter<LocationsDataHolder> {
  @override
  final int typeId = 2;

  @override
  LocationsDataHolder read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LocationsDataHolder(
      locationsWrapper:
          fields[0] == null ? [] : (fields[0] as List).cast<NewLocation>(),
    );
  }

  @override
  void write(BinaryWriter writer, LocationsDataHolder obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.locationsWrapper);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocationsDataHolderAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

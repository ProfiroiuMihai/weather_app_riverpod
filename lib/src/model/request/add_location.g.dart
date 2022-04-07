// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_location.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NewLocationAdapter extends TypeAdapter<NewLocation> {
  @override
  final int typeId = 1;

  @override
  NewLocation read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NewLocation(
      locationName: fields[0] as String,
      startDate: fields[3] as DateTime,
      locationLat: fields[1] as double,
      locationLong: fields[2] as double,
    );
  }

  @override
  void write(BinaryWriter writer, NewLocation obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.locationName)
      ..writeByte(1)
      ..write(obj.locationLat)
      ..writeByte(2)
      ..write(obj.locationLong)
      ..writeByte(3)
      ..write(obj.startDate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NewLocationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

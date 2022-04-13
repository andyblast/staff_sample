import 'package:dixy_staff/core/data/models/datasource_object.dart';
import 'package:json_annotation/json_annotation.dart';

enum EventType {
  @JsonValue('create')
  create,
  @JsonValue('read')
  read,
  @JsonValue('update')
  update,
  @JsonValue('delete')
  delete,
  @JsonValue('upload')
  upload,
}

class EventModel<T> with DataSourceObject {
  final String id;
  final EventType eventType;
  final T payload;

  EventModel({
    required this.id,
    required this.eventType,
    required this.payload,
  });

  @override
  String? getIDValue() {
    return id;
  }

  @override
  List<String> getValuesForSearch() {
    return [];
  }
}

import '../../../core/app_export.dart';

/// This class is used in the [eightysix_item_widget] screen.
class EightysixItemModel {
  EightysixItemModel({this.id}) {
    id = id ?? Rx("");
  }

  Rx<String>? id;
}

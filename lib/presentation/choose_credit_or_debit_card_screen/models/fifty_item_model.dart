import '../../../core/app_export.dart';

/// This class is used in the [fifty_item_widget] screen.
class FiftyItemModel {
  FiftyItemModel({this.id}) {
    id = id ?? Rx("");
  }

  Rx<String>? id;
}

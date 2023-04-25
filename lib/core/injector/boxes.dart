import 'package:hive/hive.dart';

class HiveBoxes {
  HiveBoxes();

  late final Box<String> userBox;

  Future<void> init() async {
    userBox = await Hive.openBox<String>('user');
  }
}

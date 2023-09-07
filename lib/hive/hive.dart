import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class HiveHelper {

  static init() async {
      Hive.init((await getApplicationDocumentsDirectory()).path);
  }

  static Future<Box> openHiveBox({required String boxName}) async {
    return await Hive.openBox(boxName);
  }
}

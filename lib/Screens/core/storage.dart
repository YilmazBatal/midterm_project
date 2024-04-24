import 'package:shared_preferences/shared_preferences.dart';

class Storage {
  Future<bool> isFirstLaunch() async {
    final SharedPreferences storage = await SharedPreferences.getInstance();

    final launched = storage.getBool("launched");

    var counter = storage.getInt("launchCount");

    if (launched == null) {
      counter = 1;
      await storage.setInt("launchCount", 1);
      return true;
    } else {
      counter = counter! + 1;
      await storage.setInt("launchCount", counter + 1);
      return false;
    }
  }

  firstLaunched() async {
    final SharedPreferences storage = await SharedPreferences.getInstance();
    await storage.setBool("launched", true);
  }

  storageClear() async {
    final SharedPreferences storage = await SharedPreferences.getInstance();
    await storage.clear();
  }

  setConfig({String? language, bool? darkMode}) async {
    final SharedPreferences storage = await SharedPreferences.getInstance();

    if (language != null) {
      await storage.setString("language", language);
    }

    if (darkMode != null) {
      await storage.setBool("darkMode", darkMode);
    }
  }

  getConfig() async {
    final SharedPreferences storage = await SharedPreferences.getInstance();

    return {
      "language": storage.getString("language"),
      "darkMode": storage.getBool("darkMode"),
    };
  }
}

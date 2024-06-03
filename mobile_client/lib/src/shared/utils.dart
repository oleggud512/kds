class AppUtils {
  static String idToString(int id) {
    final str = id.toString();
    final res = str.length > 3 
      ? str.substring(0, 3)
      : str.toString().padLeft(3, "0");
    return "#$res";
  }
}
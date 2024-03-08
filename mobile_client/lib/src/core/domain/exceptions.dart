class AppException implements Exception { 
  String message;

  AppException([this.message = '']);

  @override
  String toString() {
    return "AppException(message:$message)";
  }
}
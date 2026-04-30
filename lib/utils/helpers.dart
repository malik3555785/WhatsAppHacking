import 'package:intl/intl.dart';

class Helpers {
  // Format date
  static String formatDate(DateTime date) {
    return DateFormat('yyyy-MM-dd HH:mm').format(date);
  }

  // Format file size
  static String formatFileSize(double bytes) {
    if (bytes <= 0) return '0 B';
    const suffixes = ['B', 'KB', 'MB', 'GB'];
    int i = (bytes.log() / 1024.log()).floor();
    return '${(bytes / (1024 * 1024 * i)).toStringAsFixed(2)} ${suffixes[i]}';
  }

  // Validate email
  static bool isValidEmail(String email) {
    final regex = RegExp(
      r'^[^@]+@[^@]+\.[^@]+$',
    );
    return regex.hasMatch(email);
  }

  // Format number with commas
  static String formatNumber(int number) {
    return number.toString().replaceAllMapped(
      RegExp(r'\B(?=(\d{3})+(?!\d))'),
      (Match m) => ',',
    );
  }
}

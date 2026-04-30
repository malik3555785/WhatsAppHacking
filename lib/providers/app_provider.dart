import 'package:flutter/foundation.dart';

class AppProvider extends ChangeNotifier {
  bool _isScanning = false;
  int _filesCount = 0;
  double _storageSize = 0.0;
  String _status = 'Ready';

  // Getters
  bool get isScanning => _isScanning;
  int get filesCount => _filesCount;
  double get storageSize => _storageSize;
  String get status => _status;

  // Methods
  void toggleScanning() {
    _isScanning = !_isScanning;
    _status = _isScanning ? 'Scanning...' : 'Ready';
    notifyListeners();
  }

  void startScan() {
    _isScanning = true;
    _status = 'Scanning in progress...';
    notifyListeners();
  }

  void stopScan() {
    _isScanning = false;
    _status = 'Scan completed';
    notifyListeners();
  }

  void updateFileCount(int count) {
    _filesCount = count;
    notifyListeners();
  }

  void updateStorageSize(double size) {
    _storageSize = size;
    notifyListeners();
  }

  void reset() {
    _isScanning = false;
    _filesCount = 0;
    _storageSize = 0.0;
    _status = 'Ready';
    notifyListeners();
  }
}
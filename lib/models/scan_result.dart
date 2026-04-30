class ScanResult {
  final String deviceId;
  final DateTime scanDate;
  final int filesFound;
  final double storageUsed;
  final String status;
  final List<String> fileTypes;

  ScanResult({
    required this.deviceId,
    required this.scanDate,
    required this.filesFound,
    required this.storageUsed,
    required this.status,
    required this.fileTypes,
  });

  // Convert to JSON
  Map<String, dynamic> toJson() {
    return {
      'deviceId': deviceId,
      'scanDate': scanDate.toIso8601String(),
      'filesFound': filesFound,
      'storageUsed': storageUsed,
      'status': status,
      'fileTypes': fileTypes,
    };
  }

  // Create from JSON
  factory ScanResult.fromJson(Map<String, dynamic> json) {
    return ScanResult(
      deviceId: json['deviceId'],
      scanDate: DateTime.parse(json['scanDate']),
      filesFound: json['filesFound'],
      storageUsed: json['storageUsed'],
      status: json['status'],
      fileTypes: List<String>.from(json['fileTypes']),
    );
  }
}

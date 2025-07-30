import 'dart:async';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class NetworkConnectivityService {
  static final NetworkConnectivityService _instance = NetworkConnectivityService._internal();
  factory NetworkConnectivityService() => _instance;
  NetworkConnectivityService._internal();

  final InternetConnectionChecker _connectionChecker = InternetConnectionChecker.instance;
  final StreamController<bool> _connectionStreamController = StreamController<bool>.broadcast();

  bool _isConnected = true;

  /// Singleton instance
  static NetworkConnectivityService get instance => _instance;

  /// Stream of connection status
  Stream<bool> get connectionStream => _connectionStreamController.stream;

  /// Get current status
  bool get isConnected => _isConnected;

  /// Initialize the service
  Future<void> initialize() async {
    _isConnected = await _connectionChecker.hasConnection;

    // Listen to internet status updates
    _connectionChecker.onStatusChange.listen((status) {
      final hasInternet = status == InternetConnectionStatus.connected;
      _updateConnectionStatus(hasInternet);
    });
  }

  /// Manually check current status
  Future<bool> checkConnection() async {
    _isConnected = await _connectionChecker.hasConnection;
    return _isConnected;
  }

  void _updateConnectionStatus(bool isConnected) {
    if (_isConnected != isConnected) {
      _isConnected = isConnected;
      _connectionStreamController.add(_isConnected);
    }
  }

  /// Dispose resources
  void dispose() {
    _connectionStreamController.close();
  }
}

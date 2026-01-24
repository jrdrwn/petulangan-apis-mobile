import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityService {
  final Connectivity _connectivity = Connectivity();

  // Check if device has internet connection
  Future<bool> hasConnection() async {
    try {
      final List<ConnectivityResult> connectivityResults = await _connectivity
          .checkConnectivity();

      // Check if any connection is available (not none)
      return connectivityResults.isNotEmpty &&
          !connectivityResults.contains(ConnectivityResult.none);
    } catch (e) {
      return false;
    }
  }

  // Get connectivity stream for real-time monitoring
  Stream<List<ConnectivityResult>> get onConnectivityChanged =>
      _connectivity.onConnectivityChanged;

  // Check specific connectivity types
  Future<bool> isWifiConnected() async {
    final List<ConnectivityResult> results = await _connectivity
        .checkConnectivity();
    return results.contains(ConnectivityResult.wifi);
  }

  Future<bool> isMobileConnected() async {
    final List<ConnectivityResult> results = await _connectivity
        .checkConnectivity();
    return results.contains(ConnectivityResult.mobile);
  }
}

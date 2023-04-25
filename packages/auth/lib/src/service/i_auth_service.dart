abstract class IAuthService {
  Future<Map<String, dynamic>> loginWithCredentials({
    required String email,
    required String password,
  });
}

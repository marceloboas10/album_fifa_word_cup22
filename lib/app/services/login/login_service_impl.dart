import 'package:album_worldcup22/app/repository/auth/auth_repository.dart';
import 'package:album_worldcup22/app/services/login/login_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginServiceImpl implements LoginService {
  LoginServiceImpl({required this.authRepository});

  final AuthRepository authRepository;

  @override
  Future<void> execute(
      {required String email, required String password}) async {
    final accessToken =
        await authRepository.login(email: email, password: password);

    final spToken = await SharedPreferences.getInstance();
    spToken.setString('accessToken', accessToken);
  }
}

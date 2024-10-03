import 'package:album_worldcup22/app/pages/splash/presenter/splash_presenter.dart';
import 'package:album_worldcup22/app/pages/splash/view/splash_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPresenterImpl implements SplashPresenter {
  late final SplashView _view;

  @override
  Future<void> checklogin() async {
    _view.showLoader();

    final spToken = await SharedPreferences.getInstance();
    final accessToken = spToken.getString('accessToken');

    _view.logged(accessToken != null);
  }

  @override
  set view(view) => _view = view;
}

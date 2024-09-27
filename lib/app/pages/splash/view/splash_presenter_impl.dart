import 'package:album_worldcup22/app/pages/splash/presenter/splash_presenter.dart';
import 'package:album_worldcup22/app/pages/splash/view/splash_view.dart';

class SplashPresenterImpl implements SplashPresenter {
  late final SplashView _view;

  @override
  Future<void> checklogin() async {
    _view.showLoader();
    await Future.delayed(const Duration(seconds: 2));
    _view.logged(true);
  }

  @override
  set view(view) => _view = view;
}

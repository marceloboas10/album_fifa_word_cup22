import 'package:album_worldcup22/app/pages/splash/presenter/splash_presenter.dart';
import 'package:album_worldcup22/app/pages/splash/view/splash_view.dart';

class SplashPresenterImpl implements SplashPresenter {
  late final SplashView _view;
  @override
  Future<void> checklogin() {
    throw UnimplementedError();
  }

  @override
  set view(view) => _view = view;
}

import 'package:album_worldcup22/app/core/mvp/fwc_presenter.dart';
import 'package:album_worldcup22/app/pages/auth/register/view/register_view.dart';

abstract class RegisterPresenter extends FwcPresenter<RegisterView> {

  Future<void> register(
      {required name,
      required email,
      required password,
      required confirmPassword});
}

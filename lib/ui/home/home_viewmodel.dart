import 'package:shimmer_effect_app/app/app.locator.dart';
import 'package:shimmer_effect_app/models/character_model.dart';
import 'package:shimmer_effect_app/services/dashboard_services.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  final _dashboardService = locator<DashboardService>();
  List<CharacterModel>? charactersList = [];

  Future<void> getCharacters() async {
    charactersList =
        await runBusyFuture(_dashboardService.getCharactersDetails());
  }
}

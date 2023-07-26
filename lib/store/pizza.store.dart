
import 'package:mobx/mobx.dart';
import 'package:montepizza/pizza/domain/entity/ingredient.dart';

part 'pizza.store.g.dart';

//flutter pub run build_runner build
//flutter pub run build_runner build --delete-conflicting-outputs
// ignore: library_private_types_in_public_api
class PizzaStore = _PizzaStoreBase with _$PizzaStore;

abstract class _PizzaStoreBase with Store {

  @observable
  bool focused = false;

  @observable
  double total = 0;

  @observable
  ObservableList<Ingredient> listaIngrendientes =  ObservableList<Ingredient>();
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pizza.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PizzaStore on _PizzaStoreBase, Store {
  late final _$focusedAtom =
      Atom(name: '_PizzaStoreBase.focused', context: context);

  @override
  bool get focused {
    _$focusedAtom.reportRead();
    return super.focused;
  }

  @override
  set focused(bool value) {
    _$focusedAtom.reportWrite(value, super.focused, () {
      super.focused = value;
    });
  }

  @override
  String toString() {
    return '''
focused: ${focused}
    ''';
  }
}

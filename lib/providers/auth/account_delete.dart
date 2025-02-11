import 'package:riverpod/riverpod.dart';

final accountIsDeletedProvider = StateProvider.autoDispose<bool>(
  (ref) => false,
);

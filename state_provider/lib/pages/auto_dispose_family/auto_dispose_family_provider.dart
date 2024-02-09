import 'package:flutter_riverpod/flutter_riverpod.dart';

final autoDisposeFamilyCounterProvider =
    StateProvider.autoDispose.family<int, int>((ref, initaialValue) {
  ref.onDispose(() {
    print('[autoDisposeFamilyCounterProvider($initaialValue)] disposed');
  });
  return initaialValue;
});

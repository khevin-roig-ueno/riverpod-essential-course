import 'package:flutter_riverpod/flutter_riverpod.dart';

final familyCounterProvider = StateProvider.family<int, int>((ref, initaialValue) {
  ref.onDispose(() {
    print('[familyCounterProvider($initaialValue)] disposed');
  });
  return initaialValue;
});

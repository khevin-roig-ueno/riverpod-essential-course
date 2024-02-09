// import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auto_dispose_family_provider.g.dart';

// final autoDisposefamilyHelloProvider =
//     Provider.autoDispose.family<String, String>(
//   (ref, name) {
//     ref.onDispose(() {
//       print('[autoDisposefamilyHelloProvider($name) disposed]');
//     });
//     return 'Hello $name';
//   },
// );

// final autoDisposefamilyHelloProvider =
//     Provider.autoDispose.family<String, String>(
//   (ref, name) {
//     ref.onDispose(() {
//       print('[autoDisposefamilyHelloProvider($name) disposed]');
//     });
//     return 'Hello $name';
//   },
// );

@riverpod
String autoDisposeFamilyHello(AutoDisposeFamilyHelloRef ref,
    {required String there}) {
  ref.onDispose(() {
    print('[autoDisposefamilyHelloProvider($there) disposed]');
  });
  return 'Hello $there';
}

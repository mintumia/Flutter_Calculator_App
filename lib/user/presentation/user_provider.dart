import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import '../data/user_service.dart';
import '../data/user_model.dart';
import 'user_notifier.dart';

final userServiceProvider = Provider<UserService>((ref) {
  return UserService();
});

final userProvider = StateNotifierProvider<UserNotifier, User>((ref) {
  final service = ref.read(userServiceProvider);
  return UserNotifier(service);
});

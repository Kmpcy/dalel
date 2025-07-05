import 'package:go_router/go_router.dart';

void customNavigate({context, required String path}) {
  Future.delayed(const Duration(seconds: 2), () {
    GoRouter.of(context).push(path);
  });
}

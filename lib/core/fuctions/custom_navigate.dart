import 'package:go_router/go_router.dart';

void customNavigate({ required context, required String path}) {
  GoRouter.of(context).push(path);
}

void customReplaceNavigate({context, required String path}) {
  GoRouter.of(context).pushReplacement(path);
}

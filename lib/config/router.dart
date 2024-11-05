import 'package:go_router/go_router.dart';
import '/presentations/screens/screens.dart';

final appRouter = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) {
        return const HomeScreen();
      },
    ),
    GoRoute(
      path: "/crear-perfil",
      builder: (context, state) {
        return const CrearPerfilScreen();
      },
    ),
    GoRoute(
      path: "/perfil/:nombre/:edad/:ocupacion",
      builder: (context, state) {
        final nombre = state.pathParameters['nombre'] ?? '';
        final edad = int.tryParse(state.pathParameters['edad'] ?? '0') ?? 0;
        final ocupacion = state.pathParameters['ocupacion'] ?? '';
        return PerfilScreen(
          nombre: nombre,
          edad: edad,
          ocupacion: ocupacion,
        );
      },
    ),
  ],
);

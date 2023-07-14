import 'package:cinemapedia/presentation/screens/screens.dart';
import 'package:cinemapedia/presentation/views/views.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    ShellRoute(
        builder: (context, state, child) {
          return HomeScreen(childView: child);
        },
        routes: [
          GoRoute(
              path: '/',
              builder: (context, state) {
                return const HomeView();
              },
              routes: [
                GoRoute(
                  path: 'movie/:movieId',
                  name: MovieScreen.name,
                  builder: (context, state) => MovieScreen(
                    movieId: state.params['movieId'] ?? 'no-id',
                  ),
                ),
              ]),
          GoRoute(
            path: '/favorites',
            builder: (context, state) {
              return const FavoriteView();
            },
          )
        ]),
    // Rutas padre/hijo
    // GoRoute(
    //     path: '/',
    //     name: HomeScreen.name,
    //     builder: (context, state) => const HomeScreen(
    //           childView: FavoriteView(),
    //         ),
    //     routes: [
    //       GoRoute(
    //         path: 'movie/:movieId',
    //         name: MovieScreen.name,
    //         builder: (context, state) => MovieScreen(
    //           movieId: state.params['movieId'] ?? 'no-id',
    //         ),
    //       ),
    //     ]),
  ],
);

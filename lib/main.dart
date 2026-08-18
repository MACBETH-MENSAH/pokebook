import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import 'core/di/injection.dart';
import 'core/router/app_router.dart';
import 'core/theme/app_theme.dart';
import 'features/theme_picker/presentation/bloc/theme_bloc.dart';
import 'features/theme_picker/presentation/bloc/theme_state.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // HydratedBloc storage — required for ThemeBloc's persisted primary
  // color / brightness to survive app restarts. (hydrated_bloc 9.x API:
  // pass the Directory directly, no HydratedStorageDirectory wrapper —
  // that wrapper only exists from hydrated_bloc v10+.) path_provider has
  // no real directory on web, so use hydrated_bloc's web placeholder.
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getApplicationDocumentsDirectory(),
  );

  await configureDependencies(); // get_it + injectable, also opens Hive boxes

  runApp(const PokebookApp());
}

class PokebookApp extends StatelessWidget {
  const PokebookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ThemeBloc>(),
      child: BlocBuilder<ThemeBloc, AppThemeState>(
        builder: (context, themeState) {
          return MaterialApp.router(
            title: 'Pokebook',
            debugShowCheckedModeBanner: false,
            theme: AppTheme.light(themeState.primaryColor),
            darkTheme: AppTheme.dark(themeState.primaryColor),
            themeMode: themeState.themeMode,
            routerConfig: getIt<AppRouter>().config(),
          );
        },
      ),
    );
  }
}

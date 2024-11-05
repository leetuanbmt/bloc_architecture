import 'core/app_localization/app_localization_app.dart';
import 'core/common/app_user/app_user_cubit.dart';
import 'core/common/common/common_bloc.dart';
import 'core/config.dart';
import 'core/services/injection_container.dart';
import 'features/auth/presentation/bloc/auth_bloc.dart';
import 'root/root.dart';

/// The entry point of the application.
///
/// Initializes the application and runs the `RootApp` widget.
void main() async {
  Configs.init(() {
    runApp(
      ScreenUtilInit(
        designSize: Configs.designSize,
        minTextAdapt: Configs.minTextAdapter,
        splitScreenMode: Configs.splitScreenMode,
        child: MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => getIt<CommonBloc>()),
            BlocProvider(create: (_) => getIt<AuthBloc>()),
            BlocProvider(create: (_) => getIt<AppUserCubit>()),
          ],
          child: AppLocalizations(
            path: 'assets/translations',
            supportedLocales: LanguageLocals.supportedLocales,
            child: const RootApp(),
          ),
        ),
      ),
    );
  });
}

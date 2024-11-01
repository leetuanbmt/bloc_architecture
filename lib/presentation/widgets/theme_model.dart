import '../../blocs/preferences/preferences_bloc.dart';
import '../../core/config.dart';
import '../../core/hooks/utils/use_brightness_value.dart';

class ThemeModeToggle extends HookWidget {
  const ThemeModeToggle({super.key});

  @override
  Widget build(BuildContext context) {
    final icon = useBrightnessValue(
      light: Icons.dark_mode,
      dark: Icons.light_mode,
    );

    return IconButton(
      icon: Icon(icon),
      onPressed: () {
        context
            .read<PreferencesBloc>()
            .add(const PreferencesEvent.toggleTheme());
      },
    );
  }
}

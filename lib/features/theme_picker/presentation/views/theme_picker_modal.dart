import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theme/app_theme.dart';
import '../bloc/theme_bloc.dart';
import '../bloc/theme_event.dart';
import '../bloc/theme_state.dart';

/// Center-anchored modal for picking the app-wide primary color.
///
/// Only the visual separation between the header and body has been changed.
/// Swatch sizes, spacing, selection behavior, checkmark, and dark-mode switch
/// remain the same.
class ThemePickerModal extends StatelessWidget {
  const ThemePickerModal({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Dialog(
      backgroundColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Top section — visually separate from the color area.
          Container(
            width: double.infinity,
            color: isDark
                ? const Color(0xFF2A2A2A)
                : Colors.white,
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 20,
            ),
            child: Center(
              child: Text(
                'Choose a theme',
                style: theme.textTheme.titleMedium,
              ),
            ),
          ),

          // Lower section — same content as before.
          Container(
            width: double.infinity,
            color: isDark
                ? const Color(0xFF1F1F1F)
                : const Color(0xFFF3F3F3),
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                BlocBuilder<ThemeBloc, AppThemeState>(
                  builder: (context, state) {
                    return Wrap(
                      spacing: 14,
                      runSpacing: 14,
                      alignment: WrapAlignment.center,
                      children: AppThemeColors.selectable.map((color) {
                        final isSelected =
                            color.value == state.primaryColor.value;

                        return GestureDetector(
                          onTap: () {
                            context.read<ThemeBloc>().add(
                              ThemeEvent.primaryColorChanged(
                                color,
                              ),
                            );
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                              color: color,
                              shape: BoxShape.circle,
                              border: isSelected
                                  ? Border.all(
                                color: Colors.black87,
                                width: 3,
                              )
                                  : null,
                            ),
                            child: isSelected
                                ? const Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 20,
                            )
                                : null,
                          ),
                        );
                      }).toList(),
                    );
                  },
                ),

                const SizedBox(height: 20),

                BlocBuilder<ThemeBloc, AppThemeState>(
                  builder: (context, state) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Dark mode'),
                        Switch(
                          value: state.themeMode == ThemeMode.dark,
                          onChanged: (_) {
                            context.read<ThemeBloc>().add(
                              const ThemeEvent
                                  .themeModeToggled(),
                            );
                          },
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import '../../../home/presentation/widgets/pokebook_wordmark.dart';
import '../../../theme_picker/presentation/bloc/theme_bloc.dart';
import '../../../theme_picker/presentation/bloc/theme_state.dart';
import '../../../theme_picker/presentation/views/theme_picker_modal.dart';
import 'search_query_input.dart' as sq;

class PokemonGridAppBar extends StatefulWidget {
  final ValueChanged<String> onSearchChanged;

  const PokemonGridAppBar({
    super.key,
    required this.onSearchChanged,
  });

  @override
  State<PokemonGridAppBar> createState() =>
      _PokemonGridAppBarState();
}

class _PokemonGridAppBarState extends State<PokemonGridAppBar> {
  sq.SearchQueryInput _query =
  const sq.SearchQueryInput.pure();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            20,
            8,
            20,
            10,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 48,
                child: Row(
                  crossAxisAlignment:
                  CrossAxisAlignment.center,
                  children: [
                    // Pokebook branding.
                    const PokebookWordmark(
                      fontSize: 20,
                    ),

                    const Spacer(),

                    BlocBuilder<ThemeBloc, AppThemeState>(
                      builder: (context, state) {
                        return GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (_) =>
                              const ThemePickerModal(),
                            );
                          },
                          child: Container(
                            width: 40,
                            height: 40,
                            padding: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(
                                color: const Color(0xFFBDBDBD),
                                width: 1,
                              ),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: state.primaryColor,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              // Search field.
              SizedBox(
                height: 48,
                child: TextField(
                  onChanged: (value) {
                    final validated =
                    sq.SearchQueryInput.dirty(value);

                    setState(() {
                      _query = validated;
                    });

                    if (validated.isValid) {
                      widget.onSearchChanged(
                        validated.value,
                      );
                    }
                  },
                  decoration: InputDecoration(
                    hintText: 'Enter pokemon name',
                    hintStyle: const TextStyle(
                      color: Color(0xFF888888),
                      fontSize: 16,
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Color(0xFFD9D9D9),
                      size: 22,
                    ),
                    errorText: _query.displayError ==
                        sq.SearchQueryValidationError.tooLong
                        ? 'Too long'
                        : null,
                    filled: true,
                    fillColor: const Color(0xFFF8F8F8),
                    contentPadding:
                    const EdgeInsets.symmetric(
                      vertical: 0,
                      horizontal: 16,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius:
                      BorderRadius.circular(28),
                      borderSide: const BorderSide(
                        color: Color(0xFFE8E8E8),
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius:
                      BorderRadius.circular(28),
                      borderSide: const BorderSide(
                        color: Color(0xFFE94D83),
                        width: 1,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius:
                      BorderRadius.circular(28),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
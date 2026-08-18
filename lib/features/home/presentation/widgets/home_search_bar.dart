import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../pokemon/presentation/widgets/search_query_input.dart';
import '../../../theme_picker/presentation/bloc/theme_bloc.dart';

class HomeSearchBar extends StatefulWidget {
  final ValueChanged<String> onSubmitted;

  const HomeSearchBar({
    super.key,
    required this.onSubmitted,
  });

  @override
  State<HomeSearchBar> createState() =>
      _HomeSearchBarState();
}

class _HomeSearchBarState
    extends State<HomeSearchBar> {
  final TextEditingController _controller =
  TextEditingController();

  SearchQueryInput _query =
  const SearchQueryInput.pure();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _submit() {
    final value = _controller.text.trim();

    final validated =
    SearchQueryInput.dirty(value);

    setState(() {
      _query = validated;
    });

    if (validated.isValid) {
      widget.onSubmitted(validated.value);
    }
  }

  @override
  Widget build(BuildContext context) {
    // Exact ThemePicker color.
    // No ColorScheme-generated tonal variant.
    final primaryColor =
    context.select<ThemeBloc, Color>(
          (bloc) => bloc.state.primaryColor,
    );

    String? errorMessage;

    if (_query.displayError ==
        SearchQueryValidationError.tooLong) {
      errorMessage =
      'Keep it under 40 characters';
    } else if (_query.displayError ==
        SearchQueryValidationError
            .invalidCharacters) {
      errorMessage =
      'Only letters, numbers and hyphens';
    }

    return Column(
      crossAxisAlignment:
      CrossAxisAlignment.start,
      children: [
        Container(
          height: 76,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:
            BorderRadius.circular(40),
            border: Border.all(
              // EXACT selected theme color.
              color: primaryColor,
              width: 6,
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _controller,
                  cursorColor: primaryColor,
                  onChanged: (value) {
                    setState(() {
                      _query =
                          SearchQueryInput.dirty(
                            value,
                          );
                    });
                  },
                  onSubmitted: (_) => _submit(),
                  textInputAction:
                  TextInputAction.search,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight:
                    FontWeight.w400,
                    color: Color(0xFF333333),
                  ),
                  decoration:
                  const InputDecoration(
                    hintText:
                    'Enter pokemon name',
                    hintStyle: TextStyle(
                      color: Color(0xFF878787),
                      fontSize: 18,
                      fontWeight:
                      FontWeight.w400,
                    ),
                    border: InputBorder.none,
                    enabledBorder:
                    InputBorder.none,
                    focusedBorder:
                    InputBorder.none,
                    contentPadding:
                    EdgeInsets.only(
                      left: 28,
                      right: 12,
                    ),
                  ),
                ),
              ),

              Padding(
                padding:
                const EdgeInsets.only(
                  right: 6,
                ),
                child: Material(
                  // EXACT selected theme color.
                  color: primaryColor,
                  shape: const CircleBorder(),
                  clipBehavior:
                  Clip.antiAlias,
                  child: InkWell(
                    onTap: _submit,
                    customBorder:
                    const CircleBorder(),
                    child: const SizedBox(
                      width: 58,
                      height: 58,
                      child: Icon(
                        Icons.search_rounded,
                        color: Colors.white,
                        size: 29,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        if (errorMessage != null)
          Padding(
            padding:
            const EdgeInsets.only(
              left: 24,
              top: 8,
            ),
            child: Text(
              errorMessage,
              style: const TextStyle(
                color: Colors.red,
                fontSize: 13,
              ),
            ),
          ),
      ],
    );
  }
}
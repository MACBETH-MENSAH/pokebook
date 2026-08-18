import 'package:formz/formz.dart';

enum SearchQueryValidationError { tooLong, invalidCharacters }

/// Formz input for the Pokémon name search field. Empty is valid (it just
/// means "show everything"), so this mainly guards against pasted junk —
/// overly long strings or characters that could never match a Pokémon name.
class SearchQueryInput extends FormzInput<String, SearchQueryValidationError> {
  const SearchQueryInput.pure() : super.pure('');
  const SearchQueryInput.dirty([super.value = '']) : super.dirty();

  static final _validPattern = RegExp(r"^[a-zA-Z0-9\-'.\s]*$");

  @override
  SearchQueryValidationError? validator(String value) {
    if (value.length > 40) return SearchQueryValidationError.tooLong;
    if (value.isNotEmpty && !_validPattern.hasMatch(value)) {
      return SearchQueryValidationError.invalidCharacters;
    }
    return null;
  }
}

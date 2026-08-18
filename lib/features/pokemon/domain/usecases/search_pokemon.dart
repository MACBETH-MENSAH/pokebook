import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../entities/paginated_pokemon.dart';
import '../repositories/pokemon_repository.dart';

@injectable
class SearchPokemon {
  final PokemonRepository _repository;

  const SearchPokemon(this._repository);

  TaskEither<Failure, PaginatedPokemon> call({
    required String query,
    required int page,
    required int pageSize,
  }) {
    return _repository.searchCachedPokemon(query: query, page: page, pageSize: pageSize);
  }
}

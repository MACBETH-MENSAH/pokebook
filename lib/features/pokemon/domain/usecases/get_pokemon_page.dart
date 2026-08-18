import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../entities/paginated_pokemon.dart';
import '../repositories/pokemon_repository.dart';

@injectable
class GetPokemonPage {
  final PokemonRepository _repository;

  const GetPokemonPage(this._repository);

  TaskEither<Failure, PaginatedPokemon> call({
    required int page,
    required int pageSize,
  }) {
    return _repository.getPokemonPage(page: page, pageSize: pageSize);
  }
}

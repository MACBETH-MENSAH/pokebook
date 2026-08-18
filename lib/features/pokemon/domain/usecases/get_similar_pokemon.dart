import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../entities/pokemon.dart';
import '../repositories/pokemon_repository.dart';

@injectable
class GetSimilarPokemon {
  final PokemonRepository _repository;

  const GetSimilarPokemon(this._repository);

  TaskEither<Failure, IList<PokemonSummary>> call(Pokemon pokemon) =>
      _repository.getSimilarPokemon(pokemon);
}
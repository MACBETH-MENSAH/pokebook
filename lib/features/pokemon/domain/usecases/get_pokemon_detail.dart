import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../entities/pokemon.dart';
import '../repositories/pokemon_repository.dart';

@injectable
class GetPokemonDetail {
  final PokemonRepository _repository;

  const GetPokemonDetail(this._repository);

  TaskEither<Failure, Pokemon> call(int id) => _repository.getPokemonDetail(id);
}

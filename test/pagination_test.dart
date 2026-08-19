import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pokebook/features/pokemon/domain/entities/paginated_pokemon.dart';
import 'package:pokebook/features/pokemon/domain/entities/pokemon.dart';

/// How i did it
/// Proves the pagination *math* the requirements doc describes: with 4
/// Pokémon total and a page size of 2, you get exactly 2 pages, page 1
/// holds items 1-2 and page 2 holds items 3-4. The repository
/// (PokemonRepositoryImpl) drives this same PaginatedPokemon entity from
/// real cached/fetched data — this test isolates the pagination
/// arithmetic itself so it's easy to verify in isolation.
void main() {
  final fourPokemon = [
    const PokemonSummary(id: 1, name: 'bulbasaur', imageUrl: '', types: IListConst([])),
    const PokemonSummary(id: 2, name: 'ivysaur', imageUrl: '', types: IListConst([])),
    const PokemonSummary(id: 3, name: 'venusaur', imageUrl: '', types: IListConst([])),
    const PokemonSummary(id: 4, name: 'charmander', imageUrl: '', types: IListConst([])),
  ];

  PaginatedPokemon pageOf(int page, {int pageSize = 2}) {
    final start = (page - 1) * pageSize;
    final items = fourPokemon.skip(start).take(pageSize).toIList();
    return PaginatedPokemon(
      items: items,
      currentPage: page,
      pageSize: pageSize,
      totalCount: fourPokemon.length,
    );
  }

  test('4 Pokémon at page size 2 yields exactly 2 pages', () {
    final page1 = pageOf(1);
    expect(page1.totalPages, 2);
    expect(page1.items.map((e) => e.name), ['bulbasaur', 'ivysaur']);
    expect(page1.hasNextPage, isTrue);
    expect(page1.hasPreviousPage, isFalse);
  });

  test('page 2 holds the remaining 2 Pokémon and has no next page', () {
    final page2 = pageOf(2);
    expect(page2.items.map((e) => e.name), ['venusaur', 'charmander']);
    expect(page2.hasNextPage, isFalse);
    expect(page2.hasPreviousPage, isTrue);
  });
}

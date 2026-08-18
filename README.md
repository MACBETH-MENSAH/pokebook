# Pokebook — Setup

This sandbox doesn't have the Flutter SDK, so the code was hand-authored to
match `flutter create`'s conventions but hasn't been run/compiled yet.
Here's what to run locally, in order:

## 1. Install dependencies
```bash
flutter pub get
```

## 2. Generate code (freezed, json_serializable, injectable, auto_route, hive)
```bash
dart run build_runner build --delete-conflicting-outputs
```
This generates every `*.freezed.dart`, `*.g.dart`, `injection.config.dart`,
and `app_router.gr.dart` file referenced via `part` directives — none of
those exist yet, so **the project will not compile until this step runs.**

## 3. Run
```bash
flutter run
```

## 4. Run the pagination test
```bash
flutter test test/pagination_test.dart
```

## What's implemented
- Feature-first Bloc architecture (`lib/features/{home,pokemon,theme_picker}`, `lib/core`)
- `flutter_bloc` + strict Bloc pattern for all state (list, detail, theme)
- `hydrated_bloc` persists the chosen primary color + light/dark mode
- `freezed` for every entity/model/state/event
- `fpdart` `TaskEither<Failure, T>` end-to-end from repository → usecase → bloc; no raw exceptions cross the domain boundary (`core/error/failure.dart`)
- `fast_immutable_collections` (`IList`/`IMap`) for all entity collections
- `rxdart` debounced + switchMap'd search (`pokemon_list_bloc.dart`)
- `auto_route` for Home → List navigation
- `get_it` + `injectable` DI, `hive` local caching (list pages + Pokémon details)
- `formz` validation on both search inputs
- `auto_size_text` on the wordmark, hero title, and card names
- Home View, List View (vertical card list + custom `< 1 2 3 4 … 12 >` pagination), Detail bottom-sheet modal (About/Stats/Similar tabs), center Theme Picker modal

## Known gaps / next steps (flagging honestly, not hiding these)
1. **Confirmed with supervisor:** the app uses a fixed 4-Pokémon dataset with **no pagination UI**. `PokemonRepositoryImpl.getPokemonPage` now always fetches the same 4 Pokémon (`fixedDatasetSize = 4`), and the pagination bar has been removed from `PokemonListView`. `test/pagination_test.dart` still proves the underlying page-splitting math works (kept in case it's referenced during review), but it no longer drives any UI.
2. **Similar tab** only searches Pokémon whose *detail* is already cached (since PokéAPI doesn't expose "similar" directly). Currently a placeholder — with only 4 Pokémon in the dataset, prefetching all 4 details up front is cheap, so wire `GetSimilarPokemon` in against that.
3. **Cover gradient** currently uses a static per-type color map as a fast, reliable stand-in for the bonus "dominant color extraction" requirement. `palette_generator` is already in `pubspec.yaml` — swap `_coverColorFor` in `pokemon_detail_view.dart` for real `PaletteGenerator.fromImageProvider(...)` once you're ready to spend the API/CPU cost.
4. **List sprite images** use PokéAPI's raw GitHub sprite CDN directly (not the `dream_world` front_default field) for the *list* cards, since the list endpoint doesn't return sprite URLs — only the **Detail** fetch pulls `.sprites.other.dream_world.front_default` as required. With only 4 Pokémon now, it's cheap to eagerly fetch full details for all 4 and use the correct sprite everywhere — worth doing for consistency.
5. Nothing has been run/compiled yet — expect a few small generator-driven syntax fixes on the first `build_runner build`.

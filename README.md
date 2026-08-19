# Pokebook — Setup

## 1. Install dependencies
```bash
flutter pub get
```

## 2. Generate code (freezed, json_serializable, injectable, auto_route, hive)
```bash
dart run build_runner build --delete-conflicting-outputs
```
This generates every `*.freezed.dart`, `*.g.dart`, `injection.config.dart`,
and `app_router.gr.dart` file referenced via `part` directives — the
project will not compile until this step runs after any model/route
change.

## 3. Run
```bash
flutter run
```

## What's implemented
- Feature-first Bloc architecture (`lib/features/{home,pokemon,theme_picker}`, `lib/core`)
- `flutter_bloc` + strict Bloc pattern for all state (list, detail, theme)
- `hydrated_bloc` persists the chosen primary color + light/dark mode across app restarts
- `freezed` for every entity/model/state/event
- `fpdart` `TaskEither<Failure, T>` end-to-end from repository → usecase → bloc; no raw exceptions cross the domain boundary (`core/error/failure.dart`)
- `fast_immutable_collections` (`IList`/`IMap`) for all entity collections
- `rxdart` debounced + switchMap'd search (`pokemon_list_bloc.dart`)
- `auto_route` for **all** navigation — Home → List → Detail
- `get_it` + `injectable` DI, `hive` local caching (list items + Pokémon details)
- `formz` validation on both search inputs
- `auto_size_text` on the wordmark, hero title, and detail title
- `flutter_svg` renders the Detail screen's required `dream_world` sprite
- Home View, List View (four featured Pokémon, no pagination UI), full-screen Detail View (About/Stats/Similar tabs, functional Similar tab), center Theme Picker modal

## Deliberate design decisions ("1." confirmed with assessment supervisor)
1. **Fixed 4-Pokémon dataset, no pagination UI.** The app shows exactly Charizard, Ivysaur, Raticate, and Beedrill, matching the Figma reference — not a general page-through-hundreds app. The curated ID list lives in `lib/features/pokemon/domain/featured_pokemon.dart` (domain layer, not buried in the networking code) so the remote datasource stays a generic "fetch these ids" client.
2. **Detail screen is full-screen**, not a bottom-sheet modal — built to match the Figma reference over the written spec's literal "modal" wording.
3. **Detail hero uses a flat selected theme color**, not a computed dominant-color gradient — intentional, so the color always exactly matches what's picked in the Theme Picker with zero shade drift.

## Image sourcing
- **Detail screen's main display image** comes from `.sprites.other.dream_world.front_default` as the spec requires — fetched via jsDelivr's mirror of the PokéAPI sprites repo (some files there are served through Git LFS pointer files instead of real image bytes via raw.githubusercontent.com directly, which fails to decode). Falls back to official-artwork if a specific Pokémon's `dream_world` SVG can't be parsed.
- **List/Similar cards** use official-artwork PNGs — nothing in the spec constrains list-card image sourcing, and PNGs render more reliably than the SVG-only dream_world set.

## Known gaps / next steps
- `test/pagination_test.dart` still exists, proving the page-splitting math works, but doesn't drive any UI since pagination was removed per the confirmed decision above.
- Similar tab matches by shared type against whichever of the 4 Pokémon have cached detail — works correctly for this fixed dataset; would need a real "similar species" API concept for a general, non-fixed dataset.


--Developed by: Macbeth

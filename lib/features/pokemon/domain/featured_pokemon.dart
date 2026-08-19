/// Reason i added this, in case i 4get later:
///
/// Curated set of Pokémon shown on first load, matching the assessment's
/// Figma reference (Charizard, Ivysaur, Raticate, Beedrill in that order).
///
/// Lives in the domain layer since which Pokémon to feature is a
/// product/business decision, not a networking or presentation detail —
/// the remote datasource stays a dumb "fetch these specific ids" client
/// instead of knowing about curated content itself.
const List<int> kFeaturedPokemonIds = [6, 2, 20, 15];
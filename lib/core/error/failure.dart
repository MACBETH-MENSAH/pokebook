import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

/// All errors that cross a layer boundary (data -> domain -> presentation)
/// must be represented as a [Failure]. Never throw raw exceptions across
/// layers — catch them at the boundary and map to one of these instead.
@freezed
class Failure with _$Failure {
  const factory Failure.network({String? message}) = NetworkFailure;
  const factory Failure.server({int? statusCode, String? message}) = ServerFailure;
  const factory Failure.cache({String? message}) = CacheFailure;
  const factory Failure.notFound({String? message}) = NotFoundFailure;
  const factory Failure.unexpected({String? message}) = UnexpectedFailure;

  const Failure._();

  /// Human readable message safe to show in the UI.
  String get displayMessage => when(
        network: (m) => m ?? 'No internet connection. Please check your network.',
        server: (code, m) => m ?? 'Something went wrong on our end (code: $code).',
        cache: (m) => m ?? 'Could not read local data.',
        notFound: (m) => m ?? 'Pokémon not found.',
        unexpected: (m) => m ?? 'An unexpected error occurred.',
      );
}

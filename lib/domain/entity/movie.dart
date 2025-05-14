class Movie {
  final int id;
  final String posterPath;

  Movie({required this.id, required this.posterPath});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! Movie) return false;

    return other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}

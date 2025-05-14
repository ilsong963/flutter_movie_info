import 'package:flutter_movie_info/domain/entity/movie_detail.dart';
import 'package:flutter_movie_info/domain/repository/movie_repository.dart';
import 'package:flutter_movie_info/domain/usecase/fetch_movie_detail_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockMovieRepository extends Mock implements MovieRepository {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late MockMovieRepository mockMovieRepository;
  late FetchMovieDetailUseCase fetchMovieDetailUsecase;

  setUp(() async {
    mockMovieRepository = MockMovieRepository();
    fetchMovieDetailUsecase = FetchMovieDetailUseCase(mockMovieRepository);
  });

  test('test : fetchMovieDetail', () async {
    when(() => mockMovieRepository.fetchMovieDetail(123)).thenAnswer(
      (_) async => MovieDetail(
        budget: 4000000,
        genres: ['Adventure', 'Animation', 'Fantasy'],
        id: 123,
        productionCompanyLogos: ['https://image.tmdb.org/t/p/w500/4YldLvCWQL9VIAHQ2Fu3Ffkh9Si.png'],
        overview: 'The Fellowship of the Ring embark on a journey to destroy the One Ring and end Sauron\'s reign over Middle-earth.',
        popularity: 3.4275,
        releaseDate: DateTime.parse('1978-11-15'),
        revenue: 30500000,
        runtime: 132,
        tagline: 'Fantasy...beyond your imagination',
        title: 'The Lord of the Rings',
        voteAverage: 6.607,
        voteCount: 967,
      ),
    );

    final repositoryResult = await mockMovieRepository.fetchMovieDetail(123);
    final useCaseResult = await fetchMovieDetailUsecase.execute(123);

    expect(useCaseResult, equals(repositoryResult));
  });
}

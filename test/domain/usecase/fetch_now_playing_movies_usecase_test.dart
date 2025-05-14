import 'package:flutter_movie_info/domain/entity/movie.dart';
import 'package:flutter_movie_info/domain/repository/movie_repository.dart';
import 'package:flutter_movie_info/domain/usecase/fetch_now_playing_movies_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockMovieRepository extends Mock implements MovieRepository {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late MockMovieRepository mockMovieRepository;
  late FetchNowPlayingMoviesUseCase fetchNowPlayingMoviesUseCase;

  setUp(() async {
    mockMovieRepository = MockMovieRepository();
    fetchNowPlayingMoviesUseCase = FetchNowPlayingMoviesUseCase(mockMovieRepository);
  });

  test('test : fetchNowPlayingMovies', () async {
    when(() => mockMovieRepository.fetchNowPlayingMovies()).thenAnswer(
      (_) async => [
        Movie(id: 977294, posterPath: "/lFFDrFLXywFhy6khHes1LCFVMsL.jpg"),
        Movie(id: 1153714, posterPath: "/lXR32JepFwD1UHkplWqtBP1K79z.jpg"),
        Movie(id: 1233413, posterPath: "/jYfMTSiFFK7ffbY2lay4zyvTkEk.jpg"),
        Movie(id: 1180906, posterPath: "/S21BfLrJSD9njucBfY3CKqp8rD.jpg"),
        Movie(id: 1011477, posterPath: "/ckI6bmQDvvGy20FPTIW1kfGKGRK.jpg"),
        Movie(id: 574475, posterPath: "/cAoktVUBhGyULRoxV6mZ2LB3x7I.jpg"),
        Movie(id: 870028, posterPath: "/kMDUS7VmFhb2coRfVBoGLR8ADBt.jpg"),
        Movie(id: 575265, posterPath: "/z53D72EAOxGRqdr7KXXWp9dJiDe.jpg"),
        Movie(id: 1212855, posterPath: "/pKtUd74w4mMlnk6T55SxkIiQLH1.jpg"),
        Movie(id: 1244944, posterPath: "/n0WS2TsNcS6dtaZKzxipyO7LuCJ.jpg"),
        Movie(id: 1064486, posterPath: "/57AgZv1ITeBLShiNdchZ5153evs.jpg"),
        Movie(id: 1083968, posterPath: "/hhkiqXpfpufwxVrdSftzeKIANl3.jpg"),
        Movie(id: 552524, posterPath: "/3bN675X0K2E5QiAZVChzB5wq90B.jpg"),
        Movie(id: 823219, posterPath: "/imKSymKBK7o73sajciEmndJoVkR.jpg"),
        Movie(id: 650033, posterPath: "/tB66c6dnu9dG60mta8TF8zmeGJn.jpg"),
        Movie(id: 1122099, posterPath: "/AhmJOYdUn9katXqDk0ZpZanQ0xp.jpg"),
        Movie(id: 1284120, posterPath: "/4fwNPe7yNjFPIoxvtC5s3xSaa9E.jpg"),
        Movie(id: 402431, posterPath: "/xDGbZ0JJ3mYaGKy4Nzd9Kph6M9L.jpg"),
        Movie(id: 1233575, posterPath: "/hHPovtU4b96LHcoeEwRkGHI5btw.jpg"),
        Movie(id: 980477, posterPath: "/5lUmWTGkEcYnXujixXn31o9q2T0.jpg"),
        Movie(id: 1060345, posterPath: "/zxcfiUDPmbfkOfrqTkAtbva5eHY.jpg"),
      ],
    );

    final repositoryResult = await mockMovieRepository.fetchNowPlayingMovies();
    final useCaseResult = await fetchNowPlayingMoviesUseCase.excute();

    expect(useCaseResult, equals(repositoryResult));
  });
}

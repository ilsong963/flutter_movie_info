# 🚨 영화 정보 앱

themoviedb api를 사용해 다양한 영화의 정보를 보여주는 개인 프로젝트 입니다.

## 📃 목적
- Hero 위젯을 사용해 애니메이션 적용하기
- 클린 아키텍처를 기반으로 TMDB API 데이터 가져오기
- 테스트 코드 작성

## 📱 스크린샷

![image](https://github.com/user-attachments/assets/dc593cbd-4a55-4963-90b3-58c8a3075b36)

![image](https://github.com/user-attachments/assets/1699e7f2-b6e1-4415-aafa-f2ad8bcc3931)


## 🚀 주요 기능

- 가장 인기있는 영화

- 현재 상영 영화

- 인기순

- 평좀 높은순

- 개봉 예정 영화

## 디렉토리

### lib
```
📦lib
 ┣ 📂constant
 ┃ ┗ 📜constant.dart
 ┣ 📂core
 ┃ ┗ 📜dio_client.dart
 ┣ 📂data
 ┃ ┣ 📂data_source
 ┃ ┃ ┣ 📜movie_data_source.dart
 ┃ ┃ ┗ 📜movie_data_source_impl.dart
 ┃ ┣ 📂dto
 ┃ ┃ ┣ 📜movie_detail_dto.dart
 ┃ ┃ ┗ 📜movie_response_dto.dart
 ┃ ┗ 📂repository
 ┃ ┃ ┗ 📜movie_repository_impl.dart
 ┣ 📂domain
 ┃ ┣ 📂entity
 ┃ ┃ ┣ 📜movie.dart
 ┃ ┃ ┗ 📜movie_detail.dart
 ┃ ┣ 📂repository
 ┃ ┃ ┗ 📜movie_repository.dart
 ┃ ┗ 📂usecase
 ┃ ┃ ┣ 📜fetch_movie_detail_usecase.dart
 ┃ ┃ ┣ 📜fetch_now_playing_movies_usecase.dart
 ┃ ┃ ┣ 📜fetch_popular_movies_usecase.dart
 ┃ ┃ ┣ 📜fetch_top_rated_movies_usecase.dart
 ┃ ┃ ┗ 📜fetch_upcoming_movies_usecase.dart
 ┣ 📂presentation
 ┃ ┣ 📂pages
 ┃ ┃ ┣ 📂home_page
 ┃ ┃ ┃ ┗ 📜home_page.dart
 ┃ ┃ ┗ 📂movie_detail_page
 ┃ ┃ ┃ ┣ 📂widget
 ┃ ┃ ┃ ┃ ┣ 📜movie_detail_content_widget.dart
 ┃ ┃ ┃ ┃ ┗ 📜value_box_widget.dart
 ┃ ┃ ┃ ┣ 📜movie_detail_page.dart
 ┃ ┃ ┃ ┗ 📜movie_detail_view_model.dart
 ┃ ┗ 📂widget
 ┃ ┃ ┣ 📂common
 ┃ ┃ ┃ ┣ 📜poster_widget.dart
 ┃ ┃ ┃ ┗ 📜title_text_widget.dart
 ┃ ┃ ┣ 📂now_playing_movies
 ┃ ┃ ┃ ┣ 📜now_playing_movies_view_model.dart
 ┃ ┃ ┃ ┗ 📜now_playing_movies_widget.dart
 ┃ ┃ ┣ 📂popular_movies
 ┃ ┃ ┃ ┣ 📜most_populer_movie_widget.dart
 ┃ ┃ ┃ ┣ 📜popular_movies_view_model.dart
 ┃ ┃ ┃ ┗ 📜popular_movies_widget.dart
 ┃ ┃ ┣ 📂top_rated_movies
 ┃ ┃ ┃ ┣ 📜top_rated_movies_view_model.dart
 ┃ ┃ ┃ ┗ 📜top_rated_movies_widget.dart
 ┃ ┃ ┗ 📂upcoming_movies
 ┃ ┃ ┃ ┣ 📜upcoming_movies_view_model.dart
 ┃ ┃ ┃ ┗ 📜upcoming_movies_widget.dart
 ┣ 📂provider
 ┃ ┗ 📜providers.dart
 ┗ 📜main.dart
```

### test
```
📦test
 ┣ 📂data
 ┃ ┣ 📂data_source
 ┃ ┃ ┗ 📜movie_data_source_test.dart
 ┃ ┣ 📂dto
 ┃ ┃ ┣ 📜movie_detail_dto_test.dart
 ┃ ┃ ┗ 📜movie_response_dto_test.dart
 ┃ ┗ 📂repository
 ┃ ┃ ┗ 📜movie_repository_impl_test.dart
 ┣ 📂domain
 ┃ ┗ 📂usecase
 ┃ ┃ ┣ 📜fetch_movie_detail_usecase_test.dart
 ┃ ┃ ┣ 📜fetch_now_playing_movies_usecase_test.dart
 ┃ ┃ ┣ 📜fetch_popular_movies_usecase_test.dart
 ┃ ┃ ┣ 📜fetch_top_rated_movies_usecase_test.dart
 ┃ ┃ ┗ 📜fetch_upcoming_movies_usecase_test.dart
 ┗ 📂test_data
 ┃ ┣ 📜movie_detail_test_data.json
 ┃ ┣ 📜movie_response_dates_test_data.json
 ┃ ┗ 📜movie_response_test_data.json
```

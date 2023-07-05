
class Movie {
  String title;

  String age;

  String categories;

  String imageURL;

  String logo;

  double rating;

  String technology;

  DateTime date;

  Movie({
    required this.title,
    required this.imageURL,
    required this.logo,
    required this.age,
    required this.rating,
    required this.date,
    required this.categories,
    required this.technology,
  });
}

final List<Movie> movies = [
  Movie(
      title: 'The Irishman',
      imageURL:
          'https://lh6.googleusercontent.com/proxy/Q7IxHgbc0KPJJXyz3iG4YtLoZ2tujvlF4_NOHJWj54bnD133PH4LJQb_vyrUSQ45rL8XHe-doyHDp9SY9vA3pn43e-iQA236PQ',
      logo: 'assets/images/ticket_booking/logo/irishman.png',
      age: 'R',
      rating: 8,
      date: DateTime(2019),
      categories: 'Crime, Drama, Thriller',
      technology: 'DataSat, Dolby Digital '),
  Movie(
      title: 'JOKER',
      imageURL: 'https://mir-s3-cdn-cf.behance.net/project_modules/1400/c58b4681277211.5cfa6e54a6d3d.jpg',
      logo: 'assets/images/ticket_booking/logo/joker.png',
      age: '18+',
      rating: 8.7,
      date: DateTime(2019),
      categories: 'Crime, Drama, Thriller',
      technology: 'DataSat, Dolby Digital '),
  Movie(
      title: 'Avengers: Endgame',
      logo: 'assets/images/ticket_booking/logo/avengers.png',
      imageURL: 'https://cdn.europosters.eu/image/1300/posters/avengers-endgame-journey-s-end-i122136.jpg',
      age: 'PG-13',
      rating: 8.5,
      date: DateTime(2019),
      categories: ' Action, Adventure, Drama',
      technology: 'DataSat, Dolby Digital '),
  Movie(
      title: 'Once Upon a Time in Hollywood',
      logo: 'assets/images/ticket_booking/logo/hollywood.png',
      imageURL:'https://posterposse.com/wp-content/uploads/2019/07/Once-upon-a-time-in-hollywood-Poster-Posse-Hughes.png',
      age: 'R',
      rating: 7.7,
      date: DateTime(2019),
      categories: 'Drama, Comedy-drama',
      technology: 'DataSat, Dolby Digital '),
];

SELECT * FROM `movies` WHERE year = 1995

SELECT count(first_name) FROM `actors` JOIN 'roles' on 'actors.id' = 'roles.actor_id' JOIN 'movies' on 'movies.id' = 'roles.movie_id'

SELECT 'first_name' FROM `actors` JOIN 'roles' on 'actors.id' = 'roles.actor_id' JOIN 'movies' on 'movies.id' = 'roles.movie_id'

SELECT first_name FROM `directors` 
					JOIN movies_directors ON movies_directors.director_id=directors.id 
					JOIN movies ON movies_directors.movie_id=movies.id WHERE movies.name = "Fight Club"

SELECT count(name) FROM `movies` JOIN movies_directors ON movies_directors.director_id=movies.id 
							JOIN directors ON movies_directors.movie_id=directors.id WHERE directors.first_name = "Clint"

SELECT name FROM `movies` JOIN movies_directors ON movies_directors.director_id=movies.id 
							JOIN directors ON movies_directors.movie_id=directors.id WHERE directors.last_name = "Eastwood"

SELECT first_name, last_name FROM `directors` JOIN directors_genres ON directors_genres.director_id = directors.id
								WHERE directors_genres.genre = "Horror"

SELECT first_name, last_name FROM actors JOIN roles ON actors.id=roles.actor_id 
							JOIN movies ON roles.movie_id=movies.id 
							JOIN movies_directors ON movies.id=movies_directors.movie_id 
							JOIN directors ON movies_directors.director_id=directors.id 
							WHERE directors.first_name="Christopher" AND directors.last_name="Nolan"



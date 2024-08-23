create database MoviceAN;
use MoviceAN;


/* 1. Write a SQL query to find the name and year of the movies. Return movie title, movie release year.*/

SELECT mov_title,mov_year
FROM movicean.movie_csv;

/* 2. Write a SQL query to find when the movie 'American Beauty' released. Return movie release year. */

select mov_year
from movicean.movie_csv
where mov_title = 'American Beauty';


-- 3 Write a SQL query to find the movie that was released in 1999. Return movie title. 

select mov_title
from movicean.movie_csv
where mov_year = '1999';

/* 4. Write a SQL query to find those movies, which were released before 1998. Return movie title. */

select mov_title
from movicean.movie_csv
where mov_year < '1998';

/* 5. Write a SQL query to find the name of all reviewers and movies together in a single list. */

select rev_name
from movicean.reviewer_csv
union
select mov_title
from movicean.movie_csv;


/* 6. Write a SQL query to find all reviewers who have rated seven or more stars to their rating. Return reviewer name. */
select rev_name
from movicean.reviewer_csv,movicean.rating_csv
where rating_csv.rev_id = reviewer_csv.rev_id
and rating_csv.rev_stars >= 7
and reviewer_csv.rev_name is not null;


-- 7  Write a SQL query to find the movies without any rating. Return movie title.

select mov_title
from movicean.movie_csv
where mov_id not in (select mov_id from movicean.rating_csv);


/* 8. Write a SQL query to find the movies with ID 905 or 907 or 917. Return movie title. */

select movicean.movie_csv.mov_title
from movicean.movie_csv
where mov_id in (905,907,917);

/* 9 .Write a SQL query to find the movie titles that contain the word 'Boogie Nights'.Sort the result-set in ascending order by movie year. 
Return movie ID, movie title and movie release year. */

select mov_id,mov_title,mov_year
from movicean.movie_csv
WHERE mov_title LIKE '%Boogie%Nights%'
ORDER BY mov_year ASC;

/*  10. Write a SQL query to find those actors with the first name 'Woody' and the last name 'Allen'. Return actor ID. */

select act_id
from movicean.actor_csv
where act_fname = 'Woody' and act_lname = 'Allen';






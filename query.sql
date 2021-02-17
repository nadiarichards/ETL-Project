CREATE TABLE wiki_table (
   year VARCHAR (10),
   movie_title VARCHAR UNIQUE PRIMARY KEY,
   country VARCHAR (10), 
   genre VARCHAR,
   wiki_page VARCHAR
);

CREATE TABLE oscar_movies (
   year VARCHAR (10),
   movie_title VARCHAR UNIQUE PRIMARY KEY,
   certificate VARCHAR (10), 
   duration VARCHAR,
   genre VARCHAR,
   rate VARCHAR,
   metascore VARCHAR,
   votes VARCHAR,
   gross INT, 
   user_reviews INT,
   critic_reviews INT, 
   cartoon BOOL,
   number_of_genres INT
);

CREATE TABLE imdb_data (
   movie_title VARCHAR UNIQUE PRIMARY KEY,
	year VARCHAR,
   	genre VARCHAR,
	duration INTEGER,
	director VARCHAR,
	description VARCHAR,
	avg_vote DECIMAL,
	reviews_from_users DECIMAL,
	reviews_from_critics DECIMAL,
);

CREATE TABLE netflix_data (
   movie_title VARCHAR UNIQUE PRIMARY KEY,
	year VARCHAR,
	director VARCHAR,
	actors VARCHAR,
	release_year INTEGER,
	rating VARCHAR,
	duration VARCHAR,
	listed_in VARCHAR,
	description VARCHAR
);

CREATE TABLE oscar_wins (
   year VARCHAR (10),
   movie_title VARCHAR UNIQUE PRIMARY KEY,
   awards_wins INT,
   awards_nominations INT,
   Oscar_Best_Picture_won BOOL,
   Oscar_Best_Director_won BOOL,
   Oscar_Best_Actor_won BOOL,
   Oscar_Best_Actress_won BOOL,
   Oscar_Best_Supporting_Actor_won BOOL,
   Oscar_Best_Supporting_Actress_won BOOL,
   Oscar_Best_AdaScreen_won BOOL,
   Oscar_Best_OriScreen_won BOOL
);


SELECT A.movie_title, A.year, A.awards_wins, A.awards_nominations, B.gross, B.metascore as critics_score, 
	B.cartoon, C.director, D.wiki_page, E.avg_vote as imdb_votes
FROM oscar_wins AS A
INNER JOIN oscar_movies AS B
	ON A.movie_title = B.movie_title
INNER JOIN netflix_data AS C
	ON A.movie_title = C.movie_title
LEFT JOIN wiki_table AS D
    ON A.movie_title = D.movie_title
LEFT JOIN imdb_data AS E
    ON A.movie_title = E.movie_title
	;
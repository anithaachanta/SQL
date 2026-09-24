DROP TABLE iF EXISTS movies;
CREATE TABLE movies (
    movie_id INT PRIMARY KEY,
    title VARCHAR(255),
    release_year INT,
    language_name VARCHAR(50),
    duration INT,
    rating DECIMAL(3,1),
    director VARCHAR(255),
    director_id INT
);

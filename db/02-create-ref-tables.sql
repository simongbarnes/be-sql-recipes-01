\c my_recipes;

DROP TABLE IF EXISTS courses, categories;

CREATE TABLE
    courses (
        id SERIAL PRIMARY KEY,
        course VARCHAR(20)
    );

CREATE TABLE
    categories (
        id SERIAL PRIMARY KEY,
        category VARCHAR(20)
    );
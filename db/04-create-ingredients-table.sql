\c my_recipes;

DROP TABLE IF EXISTS ingredients;

CREATE TABLE
    ingredients (
        id SERIAL PRIMARY KEY,
        ingredient VARCHAR(50)
    );
\c my_recipes;

DROP TABLE IF EXISTS recipes_ingredients;

CREATE TABLE
    recipes_ingredients (
    id SERIAL PRIMARY KEY,
    amount VARCHAR(10),
    recipes_id INTEGER REFERENCES recipes(id)
    ON DELETE CASCADE,
    ingredients_id INTEGER REFERENCES ingredients(id)
    ON DELETE CASCADE
);
\c my_recipes;

DROP TABLE IF EXISTS recipes;

CREATE TABLE
    recipes (
        id SERIAL PRIMARY KEY,
        recipe_name VARCHAR(100),
        instructions TEXT,
        course_id INT,
        category_id INT,
        FOREIGN KEY (course_id) REFERENCES courses (id) ON DELETE CASCADE,
        FOREIGN KEY (category_id) REFERENCES categories (id) ON DELETE CASCADE
    );
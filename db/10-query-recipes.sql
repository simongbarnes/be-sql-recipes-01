\c my_recipes

\echo '\n Here are all the ingredients for mushroom risotto:\n'
SELECT ingredient
FROM ingredients
JOIN recipes_ingredients
ON ingredients.id = recipes_ingredients.ingredients_id
JOIN recipes
ON recipes_ingredients.recipes_id = recipes.id
WHERE recipes.id = 3;

\echo '\n Here are all the recipes which belong to main course:\n'
SELECT recipe_name
FROM recipes
JOIN courses
ON recipes.course_id = courses.id
WHERE courses.id = 2;

\echo '\n Here are all the recipes which use cider vinegar or parmesan:\n'
SELECT recipe_name
FROM recipes
JOIN recipes_ingredients
ON recipes_ingredients.recipes_id = recipes.id
JOIN ingredients
ON ingredients.id = recipes_ingredients.ingredients_id
WHERE ingredients.id IN (20, 22)
GROUP BY recipe_name;

\echo '\n Here are all the mains which contain nuts:\n'
SELECT recipe_name
FROM recipes
JOIN recipes_ingredients
ON recipes_ingredients.recipes_id = recipes.id
JOIN ingredients
ON ingredients.id = recipes_ingredients.ingredients_id
WHERE ingredients.id IN (24) AND course_id = 2
GROUP BY recipe_name;


-- 1. Get the ingredients of a recipe

SELECT ing.IngredientName as 'Recipe ingredients'
FROM dbo.Ingredients as ing
INNER JOIN dbo.RecipeIngredients as recIng ON ing.ID = recIng.IngredientId
INNER JOIN dbo.Recipes as rec ON rec.ID = recIng.RecipeId
WHERE rec.ID = 1


-- 2. Find how many possibilities each type of meal are

SELECT COUNT(ID) as 'Number of meals [meal type - serving time]',
	rec.MealType, rec.ServingTime
FROM dbo.Recipes as rec
GROUP BY rec.MealType, rec.ServingTime
ORDER BY COUNT(ID)


-- 3. Recipes having more than one ingredient

SELECT recIng.RecipeId as 'Recipe Id',
	COUNT(recIng.ID) as 'Number of ingredients'
FROM dbo.Ingredients as ing
INNER JOIN dbo.RecipeIngredients as recIng ON ing.ID = recIng.IngredientId
INNER JOIN dbo.Recipes as rec ON rec.ID = recIng.RecipeId
GROUP BY recIng.RecipeId
HAVING COUNT(recIng.ID) > 1


-- 4. Get the number of calories of a meal plan

SELECT SUM(rec.Calories) as 'Total calories'
FROM dbo.Recipes as rec
INNER JOIN dbo.MealPlanRecipes as mpRec ON rec.ID = mpRec.RecipeId
INNER JOIN dbo.MealPlans as mp ON mp.ID = mpRec.RecipeId
WHERE mpRec.MealPlanId = 1


-- 5. The recipes with maximum number of calories

SELECT rec.RecipeName
FROM dbo.Recipes as rec
WHERE rec.Calories = (
	SELECT MAX(rec2.Calories)
	FROM dbo.Recipes as rec2
)


-- 6. All the ingredients regardless having a recipe

SELECT ing.IngredientName, recIng.RecipeId
FROM dbo.Ingredients as ing 
LEFT JOIN dbo.RecipeIngredients recIng ON ing.ID = recIng.IngredientId


-- 7. All the recipes that are assigned to a meal plan

SELECT rec.RecipeName
FROM dbo.Recipes as rec
WHERE EXISTS (
	SELECT NULL
	FROM dbo.MealPlanRecipes as mpRec
	WHERE mpRec.RecipeId = rec.ID
)


-- 8. Get the recipes of a meal plan

SELECT rec.RecipeName as 'Meal plan recipes'
FROM dbo.Recipes as rec
INNER JOIN dbo.MealPlanRecipes as mpRec ON rec.ID = mpRec.RecipeId
INNER JOIN dbo.MealPlans as mp ON mp.ID = mpRec.RecipeId
WHERE mpRec.MealPlanId = 1


-- 9. Get all ingredient categories and order them alphabetically

SELECT ing.IngredientCategory as 'Categories'
FROM dbo.Ingredients as ing
GROUP BY ing.IngredientCategory
ORDER BY ing.IngredientCategory 


-- 10. Get recipes by criteria

SELECT rec.RecipeName
FROM dbo.Recipes as rec
WHERE rec.Calories < 600 AND rec.Servings > 3
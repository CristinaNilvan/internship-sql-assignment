BEGIN TRY
	BEGIN TRANSACTION
		
		UPDATE Ingredients
		SET IngredientName = 'Ing5 updated'
		WHERE ID = 5

		UPDATE Recipes
		SET MealType = 'Vegan',
			ServingTime = 'Dinner'
		WHERE ID = 12

		UPDATE MealPlans
		SET Calories = 100
		WHERE ID = 1

		DELETE FROM Ingredients
		WHERE Calories = 50

		DELETE FROM MealPlanRecipes
		WHERE ID = 1

	COMMIT TRANSACTION
END TRY

BEGIN CATCH
	ROLLBACK TRANSACTION
END CATCH
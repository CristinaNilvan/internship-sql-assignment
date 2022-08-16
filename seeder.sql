INSERT INTO dbo.Ingredients (IngredientName, IngredientCategory, Calories, Fats, Carbs, Proteins, ApprovedStatus)
VALUES 
('Ing1', 'Meat', 5, 5, 5, 5, 1),
('Ing2', 'Meat', 5, 5, 5, 5, 1),
('Ing3', 'Dairy', 5, 5, 5, 5, 1),
('Ing4', 'Dairy', 5, 5, 5, 5, 1),
('Ing5', 'Fruit', 5, 5, 5, 5, 1),
('Ing6', 'Fruit', 5, 5, 5, 5, 1),
('Ing7', 'Vegetable', 5, 5, 5, 5, 1),
('Ing8', 'Vegetable', 5, 5, 5, 5, 1),
('Ing9', 'Herbs', 5, 5, 5, 5, 1),
('Ing10', 'Others', 5, 5, 5, 5, 1)


INSERT INTO dbo.Recipes (RecipeName, Author, RecipeDescription, MealType, ServingTime, Servings, Calories, Fats, Carbs, Proteins, ApprovedStatus)
VALUES
('Rec1', 'Auth', 'Desc', 'Normal', 'Breakfast', 4, 5, 5, 5, 5, 1),
('Rec2', 'Auth', 'Desc', 'Vegetarian', 'Lunch', 4, 5, 5, 5, 5, 1),
('Rec3', 'Auth', 'Desc', 'Vegan', 'Dinner', 4, 5, 5, 5, 5, 1),
('Rec4', 'Auth', 'Desc', 'Normal', 'Others', 4, 5, 5, 5, 5, 1),
('Rec5', 'Auth', 'Desc', 'Vegetarian', 'Lunch', 4, 5, 5, 5, 5, 1),
('Rec6', 'Auth', 'Desc', 'Vegan', 'Dinner', 4, 5, 5, 5, 5, 1),
('Rec7', 'Auth', 'Desc', 'Normal', 'Others', 4, 5, 5, 5, 5, 1),
('Rec8', 'Auth', 'Desc', 'Vegetarian', 'Breakfast', 4, 5, 5, 5, 5, 1),
('Rec9', 'Auth', 'Desc', 'Vegan', 'Lunch', 4, 5, 5, 5, 5, 1),
('Rec10', 'Auth', 'Desc', 'Normal', 'Dinner', 4, 5, 5, 5, 5, 1)

INSERT INTO dbo.MealPlans (Calories, Fats, Carbs, Proteins)
VALUES
(10, 60, 30, 50),
(30, 10, 80, 40),
(60, 70, 70, 80),
(30, 60, 30, 10),
(80, 80, 90, 90),
(20, 40, 10, 30),
(10, 30, 70, 10),
(50, 20, 40, 20),
(20, 50, 20, 60),
(70, 20, 40, 70)


INSERT INTO dbo.RecipeIngredients (RecipeId, IngredientId)
VALUES
(1, 2),
(1, 3),
(2, 1),
(3, 7),
(3, 8),
(4, 9),
(5, 10),
(6, 3),
(7, 4),
(8, 5),
(9, 7),
(10, 6)

INSERT INTO dbo.MealPlanRecipes (MealPlanId, RecipeId)
VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 8),
(2, 9),
(2, 10),
(3, 1),
(3, 5),
(3, 6),
(4, 8),
(4, 2),
(4, 6)
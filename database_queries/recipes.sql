SELECT title, difficulty, calories, prep_time
FROM dimensions.recipe_dimension
WHERE difficulty = '1' AND locale = 'DE'

UNION

SELECT title, difficulty, calories, prep_time
FROM dimensions.recipe_dimension
WHERE difficulty in ('1', '2') AND locale = 'DE'

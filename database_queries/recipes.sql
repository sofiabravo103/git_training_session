SELECT title, difficulty, calories, prep_time
FROM dimensions.recipe_dimension
WHERE difficulty = '1' AND calories < 500 AND locale = 'US'

UNION

SELECT title, difficulty, calories, prep_time
FROM dimensions.recipe_dimension
WHERE difficulty in ('1', '2') AND prep_time = 'PT20M' AND locale = 'US'
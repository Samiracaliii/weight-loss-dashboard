USE WorkoutDB;
SELECT TOP 10 * FROM WorkoutData;

--------
SELECT 
  Workout_Type,
  ROUND(AVG(Calories_Burned), 2) AS Avg_Calories
FROM WorkoutData
GROUP BY Workout_Type
ORDER BY Avg_Calories DESC;
---
SELECT 
  Workout_Type,
  ROUND(AVG(BMI), 2) AS Avg_BMI
FROM WorkoutData
GROUP BY Workout_Type
ORDER BY Avg_BMI ASC;
---
SELECT 
  Workout_Type,
  ROUND(AVG(Fat_Percentage), 2) AS Avg_Fat_Percentage
FROM WorkoutData
GROUP BY Workout_Type
ORDER BY Avg_Fat_Percentage ASC;
---
SELECT 
  Experience_Level,
  ROUND(AVG(Workout_Frequency_days_week), 2) AS Avg_Workouts_Per_Week
FROM WorkoutData
GROUP BY Experience_Level
ORDER BY Experience_Level;

SELECT 
  CASE 
    WHEN Experience_Level = 1 THEN 'Beginner'
    WHEN Experience_Level = 2 THEN 'Intermediate'
    WHEN Experience_Level = 3 THEN 'Advanced'
    ELSE 'Unknown'
  END AS Experience_Label,
  ROUND(AVG(Workout_Frequency_days_week), 2) AS Avg_Workouts_Per_Week
FROM WorkoutData
GROUP BY 
  CASE 
    WHEN Experience_Level = 1 THEN 'Beginner'
    WHEN Experience_Level = 2 THEN 'Intermediate'
    WHEN Experience_Level = 3 THEN 'Advanced'
    ELSE 'Unknown'
  END
ORDER BY Avg_Workouts_Per_Week DESC;

SELECT TOP 100 * FROM WorkoutData
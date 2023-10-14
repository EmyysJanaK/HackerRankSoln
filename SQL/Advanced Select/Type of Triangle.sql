-- This SQL query classifies triangles based on the lengths of their sides.
-- It categorizes triangles as Equilateral, Isosceles, Scalene, or Not a Triangle
SELECT 
CASE
WHEN A + B <= C OR A + C <= B OR B + C <= A THEN "Not A Triangle"
WHEN A = B AND B = C THEN "Equilateral"
WHEN A = B OR A = C OR B = C THEN "Isosceles"
ELSE "Scalene"
END AS triangle_sides
FROM TRIANGLES

SELECT name 
FROM authors 
WHERE (death - birth) = (
    SELECT MAX(death - birth) 
    FROM authors
);

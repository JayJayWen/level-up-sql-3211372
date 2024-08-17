-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

SELECT Published,COUNT(DISTINCT(Title)) AS Title_Pub
FROM Books
GROUP BY Published
ORDER BY Title_Pub DESC;

-- Sum of Total Books Published
WITH BooksP AS (SELECT Published,COUNT(DISTINCT(Title)) AS Title_Pub
      FROM Books
      GROUP BY Published
      ORDER BY Title_Pub DESC
)
SELECT SUM(Title_Pub) AS Total_Books_Published FROM BooksP;

-- Report 2: Show the five books that have been
-- checked out the most.

WITH BooksT AS(SELECT * FROM Books
    JOIN Loans ON Books.BookID = Loans.BookID
)
SELECT Title,COUNT(Title) AS Total FROM BooksT
GROUP BY Title
ORDER BY Total DESC
LIMIT 5;


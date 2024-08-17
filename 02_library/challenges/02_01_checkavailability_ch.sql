-- Determine how many copies of the book 'Dracula'

 SELECT COUNT(Books.Title) FROM Books
    WHERE Books.Title = 'Dracula';

-- are available for library patrons to borrow.

SELECT(
    (SELECT COUNT(Books.Title) FROM Books
    WHERE Books.Title = 'Dracula') -

    (SELECT COUNT(Books.Title) FROM Loans
    JOIN Books ON Books.BookID = Loans.BookID
    WHERE Books.Title = 'Dracula'
    AND Loans.ReturnedDate IS NULL))
  AS Number_of_books_available
;
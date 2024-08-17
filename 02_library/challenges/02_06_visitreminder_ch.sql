-- Prepare a report of the library patrons
-- who have checked out the fewest books.

SELECT COUNT(Loans.LoanID) AS no_of_Books, Patrons.FirstName, Patrons.LastName, Patrons.Email
FROM Loans
JOIN Patrons ON Patrons.PatronID = Loans.PatronID
GROUP BY Patrons.PatronID
ORDER BY no_of_Books ASC


-- To limit to the 10 patrons

SELECT COUNT(Loans.LoanID) AS no_of_Books, Patrons.FirstName, Patrons.LastName, Patrons.Email
FROM Loans
JOIN Patrons ON Patrons.PatronID = Loans.PatronID
GROUP BY Patrons.PatronID
ORDER BY no_of_Books ASC
LIMIT 10;
Write an SQL to display the name of each borrower along with a comma-separated list of the books
 they have borrowed in alphabetical order, display the output in ascending order of Borrower Name.

 

Tables: Books
+-------------+-------------+
| COLUMN_NAME | DATA_TYPE   |
+-------------+-------------+
| BookID      | int         |
| BookName    | varchar(30) |
| Genre       | varchar(20) |
+-------------+-------------+

Tables: Borrowers
+--------------+-------------+
| COLUMN_NAME  | DATA_TYPE   |
+--------------+-------------+
| BorrowerID   | int         |
| BorrowerName | varchar(10) |
| BookID       | int         |

code=

SELECT 
  b.BorrowerName, 
  GROUP_CONCAT(book.BookName ORDER BY book.BookName ASC SEPARATOR ', ') AS BorrowedBooks
FROM 
  Books book
JOIN 
  Borrowers b
ON 
  b.BookID = book.BookID
GROUP BY 
  b.BorrowerName
  order by b.BorrowerName;

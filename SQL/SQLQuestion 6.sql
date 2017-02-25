select Borrower.Name,
Borrower.Address,
COUNT(Book_Loans.CardNo) as books_out
from Borrower inner join Book_Loans
 on Borrower.CardNo = Book_Loans.CardNo
 where Book_Loans.CardNo > 5
 group by Borrower.Name, Borrower.Address;


select Book.Title,
branch.Address,
loans.DueDate,
Borrower.Name,
Borrower.Address 
	from book inner join Book_Loans as loans
		on Book.Bookid= loans.Bookid
	inner join Library_Branch as branch
		on branch.Branchid= loans.Branchid
	inner join Borrower
		on Borrower.CardNo=loans.CardNo
	where branch.Address= 'Sharpstown'
	and loans.DueDate= '06/15/14'
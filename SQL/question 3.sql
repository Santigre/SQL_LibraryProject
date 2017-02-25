select Borrower.Name
	from Book_Loans as loans right join Borrower
		on Loans.CardNo = Borrower.CardNo
	where loans.CardNo is null


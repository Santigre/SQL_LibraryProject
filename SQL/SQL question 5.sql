select branch.Address, 
count(loans.CardNo) as books_out
from Library_Branch as branch
	inner join Book_Loans as loans
		on branch.Branchid = loans.Branchid
	where loans.CardNo >= 1
	Group by branch.Address




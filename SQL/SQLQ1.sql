select Book.Title,
Copies.No_Of_Copies,
Branch.Address
	from Book 
		inner join Book_Copies as Copies
			on Book.Bookid = Copies.Bookid
		inner join Library_Branch as Branch
			on Copies.Branchid = Branch.Branchid
	where Book.Title= 'The Lost Tribe'
	and Branch.Address= 'Sharpstown'
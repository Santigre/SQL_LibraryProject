create procedure add_info
as
select Book.Title,
aurthors.AuthorName,
copies.No_Of_Copies,
branch.Address
 from Book_Aurthors as aurthors
 inner join Book
 on book.Bookid = aurthors.Bookid
	inner join Book_Copies as copies
	on Book.Bookid = copies.Bookid
	inner join Library_Branch as branch
	on copies.Branchid = branch.Branchid
where branch.Address = 'Central'
and aurthors.AuthorName=  'Stephen King'

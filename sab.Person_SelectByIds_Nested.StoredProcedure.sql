USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [sab].[Person_SelectByIds_Nested]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create proc [sab].[Person_SelectByIds_Nested]
--When we pass in the User Defined Table type into a stored procedure, we cannot write to it (insert), it is read only
			@people [sab].[IntIdTable] READONLY 
as
/*

Declare @targetPeople [sab].[IntIdTable]

Insert into @targetPeople (Data)
Values (11), (16), (9), (8), (10)

--select * from @targetPeople

Execute sab.Person_SelectByIds_Nested @targetPeople

*/

BEGIN


	SELECT [PersonId]
		  ,[LastName]
		  ,[FirstName]
		  ,pe.Data
	  FROM [sab].[Person] as p left outer join @people as pe
					on p.PersonId = pe.Data
	  Where pe.Data is not null
						


END
GO

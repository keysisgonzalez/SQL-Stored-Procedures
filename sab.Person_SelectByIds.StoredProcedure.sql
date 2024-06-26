USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [sab].[Person_SelectByIds]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [sab].[Person_SelectByIds]
--When we pass in the User Defined Table type into a stored procedure, we cannot write to it (insert), it is read only
			@listOfPeople [sab].[IntIdTable] READONLY 
as
/*

Declare @targetPeople [sab].[IntIdTable]

Insert into @targetPeople (Data)
Values (11), (16), (9), (8), (10)

--select * from @targetPeople

Execute sab.Person_SelectByIds @targetPeople

*/

BEGIN

	Execute sab.Person_SelectByIds_Nested @listOfPeople
						


END
GO

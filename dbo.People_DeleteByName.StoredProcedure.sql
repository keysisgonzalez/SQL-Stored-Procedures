USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[People_DeleteByName]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[People_DeleteByName]
	@name nvarchar(5) 

as

/*

	Declare @name nvarchar(5) = 'Saly'

	--Select Before
	Select * 
	From dbo.People
	Where Name = @name;

	Execute dbo.People_DeleteByName @name

	--Select After
	Select * 
	From dbo.People
	Where Name = @name;


*/

BEGIN

	DELETE FROM [dbo].[People]
	WHERE Name = @name;
		
END
GO

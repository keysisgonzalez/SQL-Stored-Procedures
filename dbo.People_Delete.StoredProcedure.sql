USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[People_Delete]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[People_Delete] 
	@Id int 

as

/*

	Declare @Id int = 9

	--Select Before
	Select * 
	From dbo.People
	Where Id = @Id;

	Execute dbo.People_Delete @Id

	--Select After
	Select * 
	From dbo.People
	Where Id = @Id;


*/

BEGIN

	DELETE FROM [dbo].[People]
	WHERE Id = @Id;
		
END
GO

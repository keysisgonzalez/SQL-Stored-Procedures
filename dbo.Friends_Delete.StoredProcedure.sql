USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Friends_Delete]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Friends_Delete]
		@Id int

as 

/*
	Declare @Id int = 13;

	Select *
	From dbo.Friends
	Where id = @Id;

	Execute dbo.Friends_Delete @Id

	Select *
	From dbo.Friends
	Where id = @Id;

*/

BEGIN

DELETE FROM [dbo].[Friends]
      WHERE Id = @Id

END


GO

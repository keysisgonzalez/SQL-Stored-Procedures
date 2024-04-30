USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Users_Delete]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


Create proc [dbo].[Users_Delete]
		@Id int

as

/*
Declare @Id int = 3

	--Select Before
	Select *
	From dbo.Users
	Where Id = @Id;

	Execute dbo.Users_Delete @Id

	--Select After
		Select *
	From dbo.Users
	Where Id = @Id;

*/

BEGIN

	DELETE FROM [dbo].[Users]
    WHERE Id = @Id

END




GO

USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Players_Delete]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Players_Delete]
			@Id int
			
as
/*	
	Declare @Id int = 1

	Select *
	From dbo.Players
	Where id = @Id
			
	Execute dbo.Players_Delete @Id

	Select *
	From dbo.Players 
	Where id = @Id

*/

BEGIN
	
	DELETE FROM dbo.Players
	Where Id = @Id

END


GO

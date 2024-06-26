USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Players_DeleteV2]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Players_DeleteV2]
			@Id int
as
/*
	Declare @Id int = 1		

	Execute dbo.Players_DeleteV2 @Id	

*/

BEGIN
	Declare @ImageId int =  (Select PrimaryImageId
								from dbo.PlayersV2
								where Id = @Id)

	DELETE FROM [dbo].[PlayersV2]
		WHERE Id = @Id

	DELETE FROM [dbo].[PlayersImages]
		WHERE Id = @ImageId

END

GO

USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Friends_DeleteV2]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Friends_DeleteV2]
		@Id int
as 

/*
	Declare @Id int = 10;

	Select *
	From dbo.FriendsV2
	Where id = @Id;

	Execute dbo.Friends_DeleteV2 @Id

	Select *
	From dbo.FriendsV2
	Where id = @Id;

*/

BEGIN
	Declare @ImageId int =  (Select PrimaryImageId
								from dbo.FriendsV2
								where Id = @Id)

	DELETE FROM [dbo].[FriendsV2]
		WHERE Id = @Id

	DELETE FROM [dbo].[Images]
		WHERE Id = @ImageId

 END

GO

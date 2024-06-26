USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Players_UpdateV2]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Players_UpdateV2]
			@Title nvarchar(128)
           ,@StatusId int
           ,@ImageTypeId int
		   ,@ImageUrl nvarchar(128)       
           ,@UserId int
		   ,@Id int
as
/*
	Declare @Id int = 1;

	Declare @Title nvarchar(128) = 'Anna',            
            @StatusId int = 123,
            @ImageTypeId int = 30,
			@ImageUrl nvarchar(128) = 'Jane.com',
            @UserId int = 222,
			@DateNow datetime2 = GETUTCDATE()

	Select *
	From dbo.PlayersV2
	Where Id = @Id

	Select *
	From dbo.PlayersImages
	
			
	Execute dbo.Players_UpdateV2
		   @Title,           
           @StatusId,
           @ImageTypeId,           
           @ImageUrl,
		   @UserId,
		   @Id

	Select *
	From dbo.PlayersV2
	Where Id = @Id

	Select *
	From dbo.PlayersImages
	
*/


BEGIN
	Declare @ImageId int = (Select PrimaryImageId 
							From dbo.PlayersV2
							Where Id = @Id)

	UPDATE [dbo].[PlayersV2]
		  SET   [Title] = @Title
			   ,[StatusId] = @StatusId			   
			   ,[DateModified] = GETUTCDATE() 
			   ,[UserId] = @UserId

		WHERE Id = @Id

	UPDATE [dbo].[PlayersImages]
	   SET [TypeId] = @ImageTypeId
		  ,[Url] = @ImageUrl

		 WHERE Id = @ImageId		

END


GO

USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Actors_UpdateV2]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Actors_UpdateV2]
			--The payload that we're going to use to update the row
			@Title nvarchar(128)
           ,@StatusId int   
		   ,@UserId int
		   ,@ImageTypeId int
		   ,@ImageUrl nvarchar(128)          
		   ,@Id int
		   
as
/*
	Declare @Id int = 1

	Declare 
		    @Title nvarchar(128) = 'Victor',            
            @StatusId int = 555,
			@UserId int = 555,
            @ImageTypeId int = '333',
			@ImageUrl nvarchar(128) = 'vicvic.png',            
			@DateNow datetime2 = GETUTCDATE()

	Select *
	From dbo.ActorsV2
	Where Id = @Id

	Select *
	From dbo.ActorsImages

	Execute dbo.Actors_UpdateV2			  
			   @Title,			   
			   @StatusId,
			   @UserId,
			   @ImageTypeId, 
			   @ImageUrl,			   
			   @Id

	Select *
	From dbo.ActorsV2
	Where Id = @Id

	Select *
	From dbo.ActorsImages

*/

BEGIN
	Declare @ImageId int = (Select PrimaryImageId 
							From dbo.ActorsV2 
							Where Id = @Id)

	--Declare @DateNow datetime2 = GETUTCDATE()

	UPDATE [dbo].[ActorsV2]
        SET 
		    [Title] = @Title                     
		   ,[DateModified] = GETUTCDATE()           
		   ,[UserId] = @UserId		  		   

	WHERE Id = @Id	

	UPDATE dbo.ActorsImages
		SET [TypedId] = @ImageTypeId,
		    [Url] = @ImageUrl
	
	WHERE Id = @ImageId

END


GO

USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Friends_UpdateV2]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Friends_UpdateV2]
		   (
		   @Title nvarchar(128),
           @Bio nvarchar(128),
           @Summary nvarchar(128),
           @Headline nvarchar(128),
           @Slug nvarchar(128),
           @StatusId int,
           @ImageTypeId int,
		   @ImageUrl nvarchar(128),    
           @UserId int,
		   @Id int
		   )

as


/* -----Testing------

	Declare @Id int = 8;

	Declare @Title nvarchar(128) = 'Becky G',
            @Bio nvarchar(128) = 'Lorem',
            @Summary nvarchar(128) = 'Lorem',
            @Headline nvarchar(128) = 'Lorem',
            @Slug nvarchar(128) = 'Lorem',
            @StatusId int = 123,
            @ImageTypeId int = '333',
			@ImageUrl nvarchar(128) = 'becky.png',
            @UserId int = 123,
			@DateNow datetime2 = GETUTCDATE()


	Execute dbo.Friends_UpdateV2
			   @Title,
			   @Bio,
			   @Summary,
			   @Headline,
			   @Slug,
			   @StatusId,
			   @ImageTypeId, 
			   @ImageUrl,
			   @UserId,
			   @Id 

	Select @Id		    

*/

BEGIN

	UPDATE dbo.Images
		SET [TypeId] = @ImageTypeId,
		    [Url] = @ImageUrl

		Select *
		FROM dbo.FriendsV2 as f inner join dbo.Images as i
		on f.PrimaryImageId = i.Id

		WHERE f.Id = @Id

	Declare @DateNow datetime2 = GETUTCDATE()

	UPDATE [dbo].[FriendsV2]

	   SET [Title] = @Title,
		  [Bio] = @Bio,
		  [Summary] = @Summary,
		  [Headline] = @Headline,
		  [Slug] = @Slug,
		  [StatusId] = @StatusId,		 		  		  
		  [DateModified] = @DateNow,
		  [UserId] = @UserId
		  
	/*select *
	FROM dbo.FriendsV2

	select *
	FROM dbo.Images*/

	/*Select *
	FROM dbo.FriendsV2 as f inner join dbo.Images as i
		on f.PrimaryImageId = i.Id

	 WHERE f.Id = @Id*/
END

GO

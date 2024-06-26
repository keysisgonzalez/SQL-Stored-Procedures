USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Friends_Update]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Friends_Update]
		   (
		   @Title nvarchar(128),
           @Bio nvarchar(128),
           @Summary nvarchar(128),
           @Headline nvarchar(128),
           @Slug nvarchar(128),
           @StatusId int,
           @PrimaryImageUrl nvarchar(128),           
           @UserId int,
		   @Id int
		   )

as

/* -----Testing------

	Declare @Id int = 1;

	Declare @Title nvarchar(128) = 'Anthon Mraz',
            @Bio nvarchar(128) = 'Lorem',
            @Summary nvarchar(128) = 'Lorem',
            @Headline nvarchar(128) = 'Lorem',
            @Slug nvarchar(128) = 'Lorem',
            @StatusId int = 123,
            @PrimaryImageUrl nvarchar(128) = 'lorem.com',
            @UserId int = 123,
			@DateNow datetime2 = GETUTCDATE()
			

	Execute dbo.Friends_Update
			   @Title,
			   @Bio,
			   @Summary,
			   @Headline,
			   @Slug,
			   @StatusId,
			   @PrimaryImageUrl,           
			   @UserId,
			   @Id

	Select *
	from dbo.Friends
		    

*/


BEGIN

	Declare @DateNow datetime2 = GETUTCDATE()

	UPDATE [dbo].[Friends]
	   SET 
	      [Title] = @Title,
		  [Bio] = @Bio,
		  [Summary] = @Summary,
		  [Headline] = @Headline,
		  [Slug] = @Slug,
		  [StatusId] = @StatusId,
		  [PrimaryImageUrl] = @PrimaryImageUrl,		  
		  [DateModified] = @DateNow,
		  [UserId] = @UserId


	 WHERE Id = @Id

END


GO

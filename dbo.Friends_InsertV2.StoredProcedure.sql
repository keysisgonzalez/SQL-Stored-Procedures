USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Friends_InsertV2]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Friends_InsertV2]
		   @Title nvarchar(128),
           @Bio nvarchar(128),
           @Summary nvarchar(128),
           @Headline nvarchar(128),
           @Slug nvarchar(128),
           @StatusId int,
           @ImageTypeId int,
		   @ImageUrl nvarchar(128),
           @UserId int,
		   @Id int OUTPUT

as

/*--------Test---------

	Declare @Id int = 0;

	Declare @Title nvarchar(128) = 'Camila Doe',
            @Bio nvarchar(128) = 'Lorem',
            @Summary nvarchar(128) = 'Lorem',
            @Headline nvarchar(128) = 'Lorem',
            @Slug nvarchar(128) = 'friend6',
            @StatusId int = 123,
            @ImageTypeId int = 30,
			@ImageUrl nvarchar(128) = 'camila.com',
            @UserId int = 222
			
	Execute dbo.Friends_InsertV2
		   @Title,
           @Bio,
           @Summary,
           @Headline,
           @Slug,
           @StatusId,
           @ImageTypeId,           
           @ImageUrl,
		   @UserId,
		   @Id OUTPUT

	Select @Id
	from dbo.Friends_InsertV2	
	
*/


BEGIN

INSERT INTO dbo.Images
			([TypeId]
			,[Url]
			)

	VALUES 
		(@ImageTypeId
		,@ImageUrl
		)

	SET @Id = SCOPE_IDENTITY()


INSERT INTO [dbo].[FriendsV2]

           (
		   [Title]
           ,[Bio]
           ,[Summary]
           ,[Headline]
           ,[Slug]
           ,[StatusId]		   
           ,[PrimaryImageId]	  	   
           ,[UserId]
		   )

     VALUES
           (
		   @Title,
           @Bio,
           @Summary,
           @Headline,
           @Slug,
           @StatusId,
           @Id,		         
           @UserId		   
		   )		   		   	  

	SET @Id = SCOPE_IDENTITY()


		
END
GO

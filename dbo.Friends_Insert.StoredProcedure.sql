USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Friends_Insert]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Friends_Insert]
		   @Title nvarchar(128),
           @Bio nvarchar(128),
           @Summary nvarchar(128),
           @Headline nvarchar(128),
           @Slug nvarchar(128),
           @StatusId int,
           @PrimaryImageUrl nvarchar(128),           
           @UserId int,
		   @Id int OUTPUT

as
/*--------Test---------

	Declare @Id int = 0;

	Declare @Title nvarchar(128) = 'John',
            @Bio nvarchar(128) = 'Lorem',
            @Summary nvarchar(128) = 'Lorem',
            @Headline nvarchar(128) = 'Lorem',
            @Slug nvarchar(128) = 'friend6',
            @StatusId int = 123,
            @PrimaryImageUrl nvarchar(128) = 'anna.com',    
            @UserId int = 111
			
	Execute dbo.Friends_Insert
		   @Title,
           @Bio,
           @Summary,
           @Headline,
           @Slug,
           @StatusId,
           @PrimaryImageUrl,           
           @UserId,
		   @Id OUTPUT

	Select @Id

*/


BEGIN

INSERT INTO [dbo].[Friends]
           (
		   [Title]
           ,[Bio]
           ,[Summary]
           ,[Headline]
           ,[Slug]
           ,[StatusId]
           ,[PrimaryImageUrl]           
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
           @PrimaryImageUrl,           
           @UserId		   
		   )

	SET @Id = SCOPE_IDENTITY()

END
GO

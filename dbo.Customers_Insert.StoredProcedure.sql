USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Customers_Insert]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Customers_Insert]
			@Title nvarchar(128)
           ,@Bio nvarchar(128)
           ,@Summary nvarchar(128)
           ,@Headline nvarchar(128)
           ,@Slug nvarchar(128)
           ,@StatusId int
           ,@PrimaryImageId int
           ,@DateCreated datetime2(7)
           ,@DateModified datetime2(7)
           ,@UserId int
		   ,@Id int OUTPUT

as

/*--------Test---------

	Declare @Id int = 0;

	Declare @Title nvarchar(128) = 'John',
            @Bio nvarchar(128) = 'Lorem',
            @Summary nvarchar(128) = 'Lorem',
            @Headline nvarchar(128) = 'Lorem',
            @Slug nvarchar(128) = 'friend6',
            @StatusId int = 123,
			@PrimaryImageId int = 1,  
			@DateCreated datetime2(7) = getutcdate(),
            @DateModified datetime2(7) = getutcdate(),              
            @UserId int = 111
			
	Execute dbo.Customers_Insert
		   @Title,
           @Bio,
           @Summary,
           @Headline,
           @Slug,
           @StatusId,
           @PrimaryImageId,   
		   @DateCreated,
           @DateModified,
           @UserId,
		   @Id OUTPUT

	Select @Id

*/


Begin

INSERT INTO [dbo].[Customers]
           ([Title]
           ,[Bio]
           ,[Summary]
           ,[Headline]
           ,[Slug]
           ,[StatusId]
           ,[PrimaryImageId]
           ,[DateCreated]
           ,[DateModified]
           ,[UserId])

     VALUES
           (@Title
           ,@Bio
           ,@Summary 
           ,@Headline 
           ,@Slug 
           ,@StatusId
           ,@PrimaryImageId 
           ,@DateCreated
           ,@DateModified
           ,@UserId)

		   SET @Id = SCOPE_IDENTITY()
		   
End


GO

USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Customers_Update]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Customers_Update]
			@Title nvarchar(128)
           ,@Bio nvarchar(128)
           ,@Summary nvarchar(128)
           ,@Headline nvarchar(128)
           ,@Slug nvarchar(128)
           ,@StatusId int
           ,@PrimaryImageId int
           ,@UserId int
		   ,@Id int 

as

/*--------Test---------

	Declare @Id int = 12;

	Declare @Title nvarchar(128) = 'Cesar',
            @Bio nvarchar(128) = 'Lorem',
            @Summary nvarchar(128) = 'Lorem',
            @Headline nvarchar(128) = 'Lorem',
            @Slug nvarchar(128) = 'friend5',
            @StatusId int = 123,
			@PrimaryImageId int = 7,  		                        
            @UserId int = 111,
			@DateModified datetime2 = getutcdate()
			
	Execute dbo.Customers_Insert
		   @Title,
           @Bio,
           @Summary,
           @Headline,
           @Slug,
           @StatusId,
           @PrimaryImageId,             
           @UserId,
		   @Id 

	Select *
	from dbo.Customers

*/

Begin

Declare @DateNow datetime2 = GETUTCDATE()

UPDATE [dbo].[Customers]
       SET [Title] = @Title
           ,[Bio] = @Bio
           ,[Summary] = @Summary
           ,[Headline] = @Headline
           ,[Slug] = @Slug
           ,[StatusId] = @StatusId
           ,[PrimaryImageId] = @PrimaryImageId  
           ,[UserId] = @UserId
		   ,[DateModified] = @DateNow

     Where Id = @Id
		   
End


GO

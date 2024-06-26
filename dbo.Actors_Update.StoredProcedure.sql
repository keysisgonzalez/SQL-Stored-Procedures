USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Actors_Update]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Actors_Update]
			--The payload that we're going to use to update the row
			@Title nvarchar(128)
           ,@StatusId int
           ,@PrimaryImageUrl nvarchar(128)      		   
           ,@UserId int
		   ,@Id int
		   
as
/*
	Declare @Id int = 7
			,@Title nvarchar(128) = 'Cesar'
			,@StatusId int = 16
			,@PrimaryImageUrl nvarchar(128) = 'image.com'  
			,@DateNow datetime2 = GETUTCDATE()
			,@UserId int = 16			

	Select *
	from dbo.Actors
			
	Execute dbo.Actors_Insert
			@Title
           ,@StatusId
           ,@PrimaryImageUrl
           ,@UserId
		   ,@Id 

	Select *
	from dbo.Actors

*/

BEGIN

	--Declare @DateNow datetime2 = GETUTCDATE()

	UPDATE [dbo].[Actors]
        SET 
		    [Title] = @Title
           ,[StatusId] = @StatusId
           ,[PrimaryImageUrl] = @PrimaryImageUrl
		   ,[DateModified] = GETUTCDATE()           
		   ,[UserId] = @UserId		  		   

	WHERE Id = @Id

END


GO

USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Players_Update]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Players_Update]
		    @Title nvarchar(128)
           ,@StatusId int
           ,@PrimaryImageUrl nvarchar(128)           
           ,@UserId int
		   ,@Id int 

as
/*
	Declare @Id int = 2
			,@Title nvarchar(128) = 'Cesar'
			,@StatusId int = 16
			,@PrimaryImageUrl nvarchar(128) = 'image.com'  
			,@DateNow datetime2 = GETUTCDATE()
			,@UserId int = 16			

	Select *
	from dbo.Players
			
	Execute dbo.Players_Update
			@Title
           ,@StatusId
           ,@PrimaryImageUrl
           ,@UserId
		   ,@Id 

	Select *
	from dbo.Players

*/


BEGIN

UPDATE [dbo].[Players]
      SET   [Title] = @Title
           ,[StatusId] = @StatusId
           ,[PrimaryImageUrl] = @StatusId
		   ,[DateModified] = GETUTCDATE() 
           ,[UserId] = @UserId

	WHERE Id = @Id

 END


GO

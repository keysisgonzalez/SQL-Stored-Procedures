USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Actors_Insert]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Actors_Insert]			
			@Title nvarchar(128)
           ,@StatusId int
           ,@PrimaryImageUrl nvarchar(128)           
           ,@UserId int
		   ,@Id int OUTPUT
		   
as
/*
	Declare @Id int = 0
			,@Title nvarchar(128) = 'William'
			,@StatusId int = 16
			,@PrimaryImageUrl nvarchar(128) = 'image.com'  
			,@UserId int = 16
			
	Execute dbo.Actors_Insert
			@Title
           ,@StatusId
           ,@PrimaryImageUrl
           ,@UserId
		   ,@Id OUTPUT

	Select *
	from dbo.Actors

*/

BEGIN

INSERT INTO [dbo].[Actors]
           (
		    [Title]
           ,[StatusId]
           ,[PrimaryImageUrl]           
           ,[UserId]
		   )

     VALUES
           (
		   @Title
           ,@StatusId
           ,@PrimaryImageUrl
           ,@UserId
		   )

	SET @Id = SCOPE_IDENTITY()

END


GO

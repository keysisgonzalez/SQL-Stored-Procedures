USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Players_Insert]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Players_Insert]
			@Title nvarchar(128)
           ,@StatusId int
           ,@PrimaryImageUrl nvarchar(128)           
           ,@UserId int
		   ,@Id int OUTPUT
as
/*
	Declare @Id int = 1
		   ,@Title nvarchar(128) = 'Alex'
           ,@StatusId int = 4
           ,@PrimaryImageUrl nvarchar(128) = 'image.com'            
           ,@UserId int = 4

	Execute dbo.Players_Insert
			@Title
           ,@StatusId
           ,@PrimaryImageUrl           
           ,@UserId
		   ,@Id OUTPUT

	Select *
	From dbo.Players
*/


BEGIN

INSERT INTO [dbo].[Players]
           ([Title]
           ,[StatusId]
           ,[PrimaryImageUrl]           
           ,[UserId])

     VALUES
           (@Title
           ,@StatusId
           ,@PrimaryImageUrl           
           ,@UserId)

	SET @Id = SCOPE_IDENTITY()

END


GO

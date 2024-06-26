USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Computers_InsertV2]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Computers_InsertV2]
			@Name nvarchar(50)
           ,@Model nvarchar(50)
           ,@Storage nvarchar(50)
           ,@Year int
		   ,@TypeId int
		   ,@Url nvarchar(50)
           ,@IsUsed bit  
		   ,@UserId int
		   ,@Id int OUTPUT
as
/*
		Declare @Id int = 0;

		Declare @Name nvarchar(50) = 'PC5'
			   ,@Model nvarchar(50) = 'Model5'
			   ,@Storage nvarchar(50) = 'Storage5'			  
			   ,@Year int = 2023 
			   ,@TypeId int = 4
			   ,@Url nvarchar(50) = 'Url.com'
			   ,@IsUsed bit = 0
			   ,@UserId int = 300

		Execute dbo.Computers_InsertV2
			    @Name 
			   ,@Model
			   ,@Storage 
			   ,@Year 
			   ,@TypeId 
			   ,@Url
			   ,@IsUsed
			   ,@UserId
			   ,@Id OUTPUT 

		Select*
		from dbo.ComputersV2
*/

BEGIN

Declare @ImageId int

INSERT INTO dbo.ComputerImage
			([TypeId]
			,[Url])

		VALUES
			(@TypeId
			,@Url
			)

			 SET @Id = SCOPE_IDENTITY()

INSERT INTO [dbo].[ComputersV2]
           ([Name]
           ,[Model]
           ,[Storage]
           ,[PrimaryImageId]
           ,[Year]
           ,[IsUsed]
		   ,UserId)   

     VALUES
           (@Name 
           ,@Model
           ,@Storage 
           ,@ImageId
           ,@Year 
           ,@IsUsed
		   ,@UserId)
		   
		   SET @Id = SCOPE_IDENTITY()

END


GO

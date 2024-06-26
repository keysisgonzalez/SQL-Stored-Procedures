USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Computers_Insert]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Computers_Insert]
			@Name nvarchar(50)
           ,@Model nvarchar(50)
           ,@Storage nvarchar(50)
           ,@PrimaryImageUrl nvarchar(50)
           ,@Year int
           ,@IsUsed bit           
		   ,@Id int OUTPUT
as
/*
		Declare @Id int = 0;

		Declare @Name nvarchar(50) = 'PC 3'
			   ,@Model nvarchar(50) = 'Model 3'
			   ,@Storage nvarchar(50) = 'Storage 3'
			   ,@PrimaryImageUrl nvarchar(50) = 'image3.com'
			   ,@Year int = 2023
			   ,@IsUsed bit = 3			  

		Execute dbo.Computers_Insert
			    @Name 
			   ,@Model
			   ,@Storage 
			   ,@PrimaryImageUrl 
			   ,@Year 
			   ,@IsUsed
			   ,@Id OUTPUT 

		Select*
		from dbo.Computers
*/

BEGIN

INSERT INTO [dbo].[Computers]
           ([Name]
           ,[Model]
           ,[Storage]
           ,[PrimaryImageUrl]
           ,[Year]
           ,[IsUsed])   

     VALUES
           (@Name 
           ,@Model
           ,@Storage 
           ,@PrimaryImageUrl 
           ,@Year 
           ,@IsUsed)
		   
		   SET @Id = SCOPE_IDENTITY()


END


GO

USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Computers_Update]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Computers_Update]
			@Name nvarchar(50)
           ,@Model nvarchar(50)
           ,@Storage nvarchar(50)
           ,@PrimaryImageUrl nvarchar(50)
           ,@Year int
           ,@IsUsed bit           
		   ,@Id int 
as
/*
		Declare @Id int = 3;

		Declare @Name nvarchar(50) = 'Update PC 2'
			   ,@Model nvarchar(50) = 'Model 2'
			   ,@Storage nvarchar(50) = 'Storage 2'
			   ,@PrimaryImageUrl nvarchar(50) = 'image2.com'
			   ,@Year int = 2022
			   ,@IsUsed bit = 0			  

		Execute dbo.Computers_Update
			    @Name 
			   ,@Model
			   ,@Storage 
			   ,@PrimaryImageUrl 
			   ,@Year 
			   ,@IsUsed
			   ,@Id

		Select*
		from dbo.Computers
*/

BEGIN

UPDATE [dbo].[Computers]
        SET [Name] = @Name 
           ,[Model] = @Model
           ,[Storage] = @Storage
           ,[PrimaryImageUrl] = @PrimaryImageUrl
           ,[Year] = @Year
           ,[IsUsed] = @IsUsed
		   ,[DateModified] = GETUTCDATE()
		   		   
		Where Id = @Id
		
END


GO

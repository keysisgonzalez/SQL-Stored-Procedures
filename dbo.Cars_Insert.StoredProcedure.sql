USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Cars_Insert]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Cars_Insert]
			@Make nvarchar(50)
           ,@Model nvarchar(50)
           ,@Year int
           ,@IsUsed bit
           ,@ManufacturerId int          
		   ,@Id int OUTPUT

as
/*
	Declare @Id int = 1
	       ,@Make nvarchar(50) = 'BMW'
           ,@Model nvarchar(50) = 'BMW'
           ,@Year int = 2020
           ,@IsUsed bit = 1
           ,@ManufacturerId int = 123       
		   
			
	Execute dbo.Cars_Insert
		   @Make 
           ,@Model 
           ,@Year 
           ,@IsUsed 
           ,@ManufacturerId 
		   ,@Id OUTPUT

	Select *
	from dbo.Cars

*/

BEGIN

INSERT INTO [dbo].[Cars]
           ([Make]
           ,[Model]
           ,[Year]
           ,[IsUsed]
           ,[ManufacturerId])

     VALUES
           (@Make
           ,@Model
           ,@Year
           ,@IsUsed
           ,@ManufacturerId)

	SET @Id = SCOPE_IDENTITY()
           
END


GO

USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Courses_Insert]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Courses_Insert]
		    @Name nvarchar(200)
           ,@Description nvarchar(200)
           ,@SeasonTermId int         
		   ,@TeacherId int
		   ,@Id int OUTPUT
as

/*

	Declare @Id int = 0;

	Declare @Name nvarchar(200) = 'Art'
           ,@Description nvarchar(200) = 'Description 3'
           ,@SeasonTermId int = '3'
		   ,@TeacherId int = '3'

	Execute dbo.Courses_Insert
			@Name 
           ,@Description 
           ,@SeasonTermId         
		   ,@TeacherId
		   ,@Id OUTPUT

	Select *
	from dbo.Courses

	Select *
	from dbo.SeasonTerms

	Select *
	from dbo.Teachers

*/

BEGIN

INSERT INTO [dbo].[Courses]
           ([Name]
           ,[Description]
           ,[SeasonTermId]
           ,[TeacherId])

     VALUES
           (@Name 
           ,@Description 
           ,@SeasonTermId         
		   ,@TeacherId)

	 SET @Id = SCOPE_IDENTITY()

END


GO

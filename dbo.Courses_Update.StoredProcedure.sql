USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Courses_Update]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Courses_Update]
		    @Name nvarchar(200)
           ,@Description nvarchar(200)
           ,@SeasonTermId int         
		   ,@TeacherId int
		   ,@Id int 
as

/*

	Declare @Id int = 8;

	Declare @Name nvarchar(200) = 'Design'
           ,@Description nvarchar(200) = 'Description 4'
           ,@SeasonTermId int = '2'
		   ,@TeacherId int = '2'

	Execute dbo.Courses_Update
			@Name 
           ,@Description 
           ,@SeasonTermId         
		   ,@TeacherId
		   ,@Id 

	Select *
	from dbo.Courses

	Select *
	from dbo.SeasonTerms

	Select *
	from dbo.Teachers

*/

BEGIN

	UPDATE [dbo].[Courses]
		   SET  [Name] =  @Name
			   ,[Description] = @Description
			   ,[SeasonTermId] = @SeasonTermId
			   ,[TeacherId] = @TeacherId

		   WHERE Id = @Id

END



GO

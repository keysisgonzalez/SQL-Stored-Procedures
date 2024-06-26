USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Courses_SelectByIdV3]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Courses_SelectByIdV3]
		   @Id int 
as

/*

	Declare @Id int = 1;
	Execute [dbo].[Courses_SelectByIdV3] @Id

	Select *
	from dbo.Courses

	Select *
	from dbo.Students

	Select *
	from dbo.SeasonTerms

	Select *
	from dbo.Teachers

*/

BEGIN

	SELECT 	c.[Id]
           ,c.[Name]
           ,c.[Description]	
           ,st.[Term] as SeasonTerm
		   ,t.Name as Teacher
		   ,[Students] = (
				Select s.Id, s.Name 
				FROM dbo.Students as s inner join dbo.StudentCourses as sc
				on s.Id = sc.StudentId 				
				Where @Id = sc.CourseId			
				For JSON AUTO
		   )	
	   
		FROM dbo.SeasonTerms as st inner join dbo.Courses as c
			on st.Id = c.SeasonTermId 	

		 inner join dbo.Teachers as t
		on t.Id = c.TeacherId	   
		Where c.Id = @Id

END




GO

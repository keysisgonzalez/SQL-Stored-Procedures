USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Courses_Pagination]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Courses_Pagination]
		   @PageIndex int,
	    	@PageSize int
as

/*
	Declare @PageIndex int = 0,
			@PageSize int = 100
			
	Execute dbo.Courses_Pagination
			@PageIndex,
			@PageSize				

*/

BEGIN

	Declare @offset int = @PageIndex * @PageSize

	SELECT 	c.[Id]
           ,c.[Name]
           ,c.[Description]	
           ,st.[Term] as SeasonTerm
		   ,t.Name as Teacher
		   ,[Students] = (
				Select s.Id, s.Name 
				FROM dbo.Students as s inner join dbo.StudentCourses as sc
				on s.Id = sc.StudentId 				
				Where c.Id = sc.CourseId			
				For JSON AUTO
		   )
		   ,TotalCount = COUNT(1) OVER()
		   
		FROM dbo.SeasonTerms as st inner join dbo.Courses as c
			on st.Id = c.SeasonTermId 	

		 inner join dbo.Teachers as t
		on t.Id = c.TeacherId	   
		Where c.Id = t.Id

		ORDER BY st.Id

		 OFFSET @offSet Rows
		 Fetch Next @PageSize Rows ONLY
		

END




GO

USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Customers_Search_PaginationV3]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Customers_Search_PaginationV3]			
		  @PageIndex int,
		  @PageSize int,
		  @Query nvarchar(128)

as

/*--------Test---------
	
	Declare @PageIndex int = 0,
			@PageSize int = 20,
			@Query nvarchar(128) = 'Maya'

	Execute dbo.Customers_Search_PaginationV3
			@PageIndex,
			@PageSize,
			@Query

	Select *
	from dbo.Customers

	select * 
	from dbo.Images2

*/

Begin

Declare @offset int = @PageIndex * @PageSize 

	SELECT c.[Id]
		   ,[Title] 
           ,[Bio]
           ,[Summary] 
           ,[Headline]
           ,[Slug] 
           ,[StatusId]
           ,[PrimaryImageId]   
		   ,[TypeId]
		   ,[Url]
		   ,[Skills] = (
					Select s.Name
					from dbo.CustomerSkills as cs inner join dbo.Skills2 as s
					on s.Id = cs.SkillId		
					where c.Id = cs.CustomerId
					for JSON AUTO
		   )
           ,c.[UserId]
		   ,c.[DateCreated]
		   ,c.[DateModified]   
		   ,TotalCount = COUNT(1) OVER()

	 FROM [dbo].[Customers] as c inner join dbo.Images as i
			on c.PrimaryImageId = i.Id

	 Where (Title LIKE '%' + @Query + '%')
	 ORDER BY c.Id

	  OFFSET @offSet Rows
	  Fetch Next @PageSize Rows ONLY	

End


GO

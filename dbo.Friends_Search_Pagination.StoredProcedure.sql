USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Friends_Search_Pagination]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Friends_Search_Pagination]
			@PageIndex int,
			@PageSize int,
			@Query nvarchar(128)

as

/*
	Declare @PageIndex int = 0,
			@PageSize int = 1,
			@Query nvarchar(128) = 'Sam'
			
	Execute dbo.Friends_Search_Pagination
			@PageIndex,
			@PageSize,
			@Query			
*/

BEGIN

	Declare @offset int = @PageIndex * @PageSize 

	SELECT [Id]
		  ,[Title]
		  ,[Bio]
		  ,[Summary]
		  ,[Headline]
		  ,[Slug]
		  ,[StatusId]
		  ,[PrimaryImageUrl]		  
		  ,[UserId]
		  ,TotalCount = COUNT(1) OVER()

	  FROM [dbo].[Friends]	  	  

	  Where (Title LIKE '%' + @Query + '%')
	  ORDER BY Id

	  OFFSET @offSet Rows
	  Fetch Next @PageSize Rows ONLY
	 
END


GO

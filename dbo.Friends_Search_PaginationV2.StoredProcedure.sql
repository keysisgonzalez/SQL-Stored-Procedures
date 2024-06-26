USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Friends_Search_PaginationV2]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Friends_Search_PaginationV2]
		@PageIndex int,
		@PageSize int,
		@Query nvarchar(128)

as

/*
	Declare @PageIndex int = 0,
			@PageSize int = 1,
			@Query nvarchar(128) = 'Arya'
			
	Execute dbo.Friends_Search_PaginationV2
			@PageIndex,
			@PageSize,
			@Query			
*/

BEGIN

	Declare @offset int = @PageIndex * @PageSize 

	SELECT f.[Id]
		  ,[Title]
		  ,[Bio]
		  ,[Summary]
		  ,[Headline]
		  ,[Slug]
		  ,[StatusId]
		  ,[PrimaryImageId] as ImageId
	      ,[TypeId] as ImageTypeId
	      ,[Url] as ImageUrl --Now that the tables are joined, i can call the columns without the alias
		  ,[UserId]
		  ,[DateCreated]
		  ,[DateModified]		  
		  ,TotalCount = COUNT(1) OVER()
		  
	  FROM dbo.FriendsV2 as f inner join dbo.Images as i
		on f.PrimaryImageId = i.Id	  	  

	  Where (Title LIKE '%' + @Query + '%')
	  ORDER BY f.Id

	  OFFSET @offSet Rows
	  Fetch Next @PageSize Rows ONLY
	 
END


GO

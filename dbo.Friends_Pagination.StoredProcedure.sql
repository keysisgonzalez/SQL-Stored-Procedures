USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Friends_Pagination]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Friends_Pagination]
		@PageIndex int,
		@PageSize int		

as

/*
	Declare @PageIndex int = 0,
			@PageSize int = 5		
			
	Execute dbo.Friends_Pagination
			@PageIndex,
			@PageSize	
			
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
		  ,[DateCreated]
		  ,[DateModified]  
		  ,TotalCount = COUNT(1) OVER()

	  FROM [dbo].[Friends]
	  ORDER BY Id

	  OFFSET @offSet Rows
	  Fetch Next @PageSize Rows ONLY
	  

END


GO

USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Friends_PaginationV2]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Friends_PaginationV2]
		@PageIndex int,
		@PageSize int		

as

/*
	Declare @PageIndex int = 0,
			@PageSize int = 5		
			
	Execute dbo.Friends_PaginationV2
			@PageIndex,
			@PageSize	
			
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
    ORDER BY f.Id

	  OFFSET @offSet Rows
	  Fetch Next @PageSize Rows ONLY
END


GO

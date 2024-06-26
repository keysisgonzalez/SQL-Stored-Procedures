USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Players_Search_PaginationV2]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Players_Search_PaginationV2]
			@PageIndex int,
			@PageSize int,
			@Query nvarchar(128)
			
as
/*
	
	Declare @PageIndex int = 0,
			@PageSize int = 3,
			@Query nvarchar(128) = 'Jane'

	Execute dbo.Players_Search_PaginationV2
			@PageIndex,
			@PageSize
			@Query

*/


BEGIN

	Declare @offset int = @PageIndex * @PageSize 

	SELECT 
           p.[Id]
		   ,[Title]
           ,[StatusId]
           ,[PrimaryImageId] as ImageId
		   ,[TypeId] as ImageTypeId
		   ,[Url] as ImageUrl --Now that the tables are joined, i can call the
		   ,[DateCreated]
		   ,[DateModified]
           ,[UserId]
		   ,TotalCount = COUNT(1) OVER()

	FROM dbo.PlayersV2 as p inner join dbo.PlayersImages as pim
		on p.PrimaryImageId = pim.Id

	Where (Title LIKE '%' + @Query + '%')
	ORDER BY p.Id 

	OFFSET @offset Rows
	Fetch Next @PageSize Rows ONLY

END


GO

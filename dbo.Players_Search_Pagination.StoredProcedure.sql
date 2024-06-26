USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Players_Search_Pagination]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create proc [dbo].[Players_Search_Pagination]
			@PageIndex int,
			@PageSize int,
			@Query nvarchar(128)

			
as
/*
	
	Declare @PageIndex int = 0,
			@PageSize int = 3,
			@Query nvarchar(128) = 'Luis'

	Execute dbo.Players_Search_Pagination
			@PageIndex,
			@PageSize,
			@Query	

*/

BEGIN

	Declare @offset int = @PageIndex * @PageSize 

	SELECT 
           [Id]
		   ,[Title]
           ,[StatusId]
           ,[PrimaryImageUrl]   
		   ,[DateCreated]
		   ,[DateModified]
           ,[UserId]

	FROM dbo.Players		
	Where (Title LIKE '%' + @Query + '%')
	ORDER BY Id 

	OFFSET @offset Rows
	Fetch Next @PageSize Rows ONLY

END


GO

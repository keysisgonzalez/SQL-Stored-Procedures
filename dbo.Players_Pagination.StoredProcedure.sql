USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Players_Pagination]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Players_Pagination]
			@PageIndex int,
			@PageSize int
			
as
/*
	
	Declare @PageIndex int = 0,
			@PageSize int = 3

	Execute dbo.Players_Pagination
			@PageIndex,
			@PageSize
	

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
		   ,TotalCount = COUNT(1) OVER()

	FROM dbo.Players	
	ORDER BY Id 

	OFFSET @offset Rows
	Fetch Next @PageSize Rows ONLY

END


GO

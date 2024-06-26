USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Actors_Pagination]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Actors_Pagination]
			@PageIndex int,
			@PageSize int
		  
		   
as
/*
	Declare @PageIndex int = 0,
			@PageSize int = 3

	Execute dbo.Actors_Pagination
			@PageIndex,
			@PageSize

*/

BEGIN

	Declare @offset int = @PageIndex * @PageSize 

	SELECT [Id]
		  ,[Title]
		  ,[StatusId]
		  ,[PrimaryImageUrl]
		  ,[DateCreated]
		  ,[DateModified]
		  ,[UserId]
		  
	  FROM [dbo].[Actors] 
	  ORDER BY Id 

	  OFFSET @offset Rows
	  Fetch Next @PageSize Rows ONLY

	
END


GO

USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Users_Search_Pagination]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Users_Search_Pagination]
		@PageIndex int,
		@PageSize int,
		@Query nvarchar(128)

as

/*
	Declare @PageIndex int = 0,
			@PageSize int = 6,
			@Query nvarchar(128) = 'Anna'
			

	Execute dbo.Users_Search_Pagination
			@PageIndex,
			@PageSize,
			@Query
			
*/

BEGIN

	Declare @offset int = @PageIndex * @PageSize 

	SELECT [Id]
		  ,[FirstName]
		  ,[LastName]
		  ,[Email]
		  ,[AvatarUrl]
		  ,[TenantId]
		  ,[Password]
		  ,[DateCreated]
		  ,[DateModified]

	  FROM [dbo].[Users]

	  Where (FirstName LIKE '%' + @Query + '%')

	  ORDER BY Id

	  OFFSET @offSet Rows
	  Fetch Next @PageSize Rows ONLY

END



  
GO

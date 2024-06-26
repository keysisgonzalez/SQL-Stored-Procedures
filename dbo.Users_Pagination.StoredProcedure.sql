USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Users_Pagination]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Users_Pagination]  
		@PageIndex int,
		@PageSize int

as

/*
	Declare @PageIndex int = 1,
			@PageSize int = 7
			

	Execute dbo.Users_Pagination
			@PageIndex,
			@PageSize
*/


BEGIN
--@PageIndex: Specifies the index of the page to retrieve. It is 0-based, meaning the first page is at index 0.
--@PageSize: Specifies the number of records per page.	  

	  Declare @offset int = @PageIndex * @PageSize --Calculates the number of rows to skip based on the page index and page size.

        SELECT [Id]
			  ,[FirstName]
			  ,[LastName]
			  ,[Email]
			  ,[AvatarUrl]
			  ,[TenantId]
			  ,[Password]
              , TotalCount = COUNT(1) OVER() 
        
		
		FROM dbo.Users 
        ORDER BY Id

		OFFSET @offSet Rows --Specifies the number of rows to skip based on the calculated offset.
		Fetch Next @PageSize Rows ONLY --Specifies the number of rows to return, which is determined by the page size.

END

/*------HARD CODED EXAMPLE------

  FROM [dbo].[Users]

  ORDER BY Email
  OFFSET 2 ROWS -- This indicates how many records to skip
  FETCH NEXT 5 ROWS ONLY -- this number indicated how many records to return.

  */
GO

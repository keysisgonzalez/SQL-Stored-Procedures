USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Computers_Search_Pagination]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create proc [dbo].[Computers_Search_Pagination]		
		@PageIndex int,
		@PageSize int,
		@Query nvarchar(50)

		    
as
/*		
	Declare @PageIndex int = 0,
			@PageSize int = 3,
			@Query nvarchar(50) = 'Update'

	Execute dbo.Computers_Search_Pagination	
			@PageIndex,
			@PageSize	
			@Query

	Select*
	from dbo.Computers
*/

BEGIN

Declare @offset int = @PageIndex * @PageSize 

SELECT		[Id]
           ,[Name] 
           ,[Model]
           ,[Storage]
           ,[PrimaryImageUrl]
           ,[Year]
           ,[IsUsed]
		   ,[DateCreated] 
		   ,[DateModified] 
		   ,TotalCount = COUNT(1) OVER()

		FROM [dbo].[Computers]    

		Where(Name LIKE '%' + @Query + '%')
		ORDER BY Id
		
		OFFSET @offSet Rows
	    Fetch Next @PageSize Rows ONLY
END


GO

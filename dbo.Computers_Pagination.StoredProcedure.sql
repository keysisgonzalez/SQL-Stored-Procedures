USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Computers_Pagination]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create proc [dbo].[Computers_Pagination]		
		@PageIndex int,
		@PageSize int		

		    
as
/*		
	Declare @PageIndex int = 0,
			@PageSize int = 2

	Execute dbo.Computers_Pagination
			@PageIndex,
			@PageSize	

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
		ORDER BY Id
		
		OFFSET @offSet Rows
	    Fetch Next @PageSize Rows ONLY
END


GO

USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Computers_Search_PaginationV3]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Computers_Search_PaginationV3]
			@PageIndex int,
			@PageSize int,
			@Query nvarchar(128)

as
/*	
	Declare @PageIndex int = 0,
			@PageSize int = 2,
			@Query nvarchar(128) = 'PC5'
			
	Execute dbo.Computers_Search_PaginationV3
			@PageIndex,
			@PageSize,
			@Query
			
		Select*
		from dbo.ComputersV2

		Select*
		from dbo.ComputerImage
*/

BEGIN

Declare @offset int = @PageIndex * @PageSize 

SELECT c.[Id]
      ,[Name]
      ,[Model]
      ,[Storage]
      ,[PrimaryImageId]
      ,[Year]
      ,[IsUsed]
      ,[UserId]
	  ,ci.Id
	  ,ci.Url
	  ,Monitors =(
			select m.Id, m.Name
			from dbo.Monitors as m inner join dbo.ComputerMonitors as cm
			on m.Id = cm.MonitorId
			where cm.ComputerId = c.Id
			for JSON AUTO
	  )	  
      ,[DateCreated]
      ,[DateModified]
	  ,TotalCount = COUNT(1) OVER()

  FROM [dbo].[ComputersV2] as c inner join dbo.ComputerImage as ci
			on c.PrimaryImageId = ci.Id

	Where (Name LIKE '%' + @Query + '%')
	ORDER BY c.Id

	 OFFSET @offSet Rows
	 Fetch Next @PageSize Rows ONLY

END


GO

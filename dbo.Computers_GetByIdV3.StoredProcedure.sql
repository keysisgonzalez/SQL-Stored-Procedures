USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Computers_GetByIdV3]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create proc [dbo].[Computers_GetByIdV3]
				@Id int

as
/*	
		Declare @Id int = 3;
		Execute dbo.[Computers_GetByIdV3] @Id
			
		Select*
		from dbo.ComputersV2

		Select*
		from dbo.ComputerImage
*/

BEGIN

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

  FROM [dbo].[ComputersV2] as c inner join dbo.ComputerImage as ci
			on c.PrimaryImageId = ci.Id

	Where c.Id = @Id

END


GO

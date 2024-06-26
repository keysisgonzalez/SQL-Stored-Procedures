USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Players_SelectAllV2]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Players_SelectAllV2]
			
as
/*
	Execute dbo.Players_SelectAllV2 	

*/


BEGIN

	SELECT 
           
		   [Title]
           ,[StatusId]
           ,[PrimaryImageId]           
           ,[UserId]
		   ,[DateCreated]
		   ,[DateModified]
		   ,TypeId
		   ,Url

	FROM dbo.PlayersV2 as p inner join dbo.PlayersImages as pim
				on p.PrimaryImageId = pim.Id

END


GO

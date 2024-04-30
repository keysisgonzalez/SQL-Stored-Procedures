USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Players_SelectAll]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Players_SelectAll]
			
as
/*
	
	Execute dbo.Players_SelectAll
	

*/


BEGIN

	SELECT 
           [Id]
		   ,[Title]
           ,[StatusId]
           ,[PrimaryImageUrl]           
           ,[UserId]

	FROM dbo.Players	

END


GO

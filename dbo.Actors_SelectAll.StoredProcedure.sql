USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Actors_SelectAll]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Actors_SelectAll]			
		  
		   
as
/*
	Execute dbo.Actors_SelectAll

*/

BEGIN

SELECT [Id]
      ,[Title]
      ,[StatusId]
      ,[PrimaryImageUrl]
      ,[DateCreated]
      ,[DateModified]
      ,[UserId]

  FROM [dbo].[Actors]

	
END


GO

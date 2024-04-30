USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Cars_SelectAll]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Cars_SelectAll]

as

/*
	Execute dbo.Cars_SelectAll

*/


BEGIN

SELECT [Id]
      ,[Make]
      ,[Model]
      ,[Year]
      ,[IsUsed]      
      ,[DateCreated]
      ,[DateModified]

  FROM [dbo].[Cars]

END


GO

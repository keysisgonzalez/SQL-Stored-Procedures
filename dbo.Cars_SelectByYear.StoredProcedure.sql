USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Cars_SelectByYear]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Cars_SelectByYear]			
			@Year int
			

as

/*
	Execute dbo.Cars_SelectByYear @Year

*/


BEGIN

SELECT [Id]
      ,[Make]      
      ,[Year]           
      ,[DateCreated]
      ,[DateModified]

  FROM [dbo].[Cars]

  Where Year = @Year

END


GO

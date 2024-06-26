USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Cars_SelectByMake]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Cars_SelectByMake]			
			@Make nvarchar(50)
			

as

/*
	Execute dbo.Cars_SelectByMake @Make

*/


BEGIN

SELECT [Id]
      ,[Make]      
	  ,[Model]              
      ,[DateCreated]
      ,[DateModified]

  FROM [dbo].[Cars]

  Where Make = @Make

END


GO

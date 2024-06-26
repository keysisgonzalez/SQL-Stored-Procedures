USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Cars_SelectById]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


Create proc [dbo].[Cars_SelectById]
			@Id Int

as

/*
	Execute dbo.Cars_SelectById @Id

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

  Where Id = @Id

END


GO

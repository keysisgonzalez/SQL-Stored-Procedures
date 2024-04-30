USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[People_SelectAll]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[People_SelectAll]

as

/*
	Execute dbo.People_SelectAll
*/

BEGIN 

	SELECT [Id]
      ,[Name]
      ,[Age]
      ,[IsSmoker]
      ,[DateAdded]
      ,[DateModified]
      ,[UserId]
  FROM [dbo].[People]

END
GO

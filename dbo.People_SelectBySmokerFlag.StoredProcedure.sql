USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[People_SelectBySmokerFlag]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[People_SelectBySmokerFlag]
		@SmokerFlag bit

as

/*
--You cannot compare null values unless you use a condition see OR in WHERE section
--Declare @SmokerFlag bit = null;

	Declare @SmokerFlag bit = 1;

	Execute dbo.[People_SelectBySmokerFlag] @SmokerFlag
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
  Where ([IsSmoker] = @SmokerFlag) --first condition
		OR 
		(@SmokerFlag IS NULL AND [IsSmoker] IS NULL) --second condition

END
GO

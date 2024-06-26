USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[People_SelectById]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[People_SelectById]
		@Id int

as

/*
	Declare @Id int = 9;

	Execute dbo.People_SelectById @Id
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
  Where Id = @Id

END
GO

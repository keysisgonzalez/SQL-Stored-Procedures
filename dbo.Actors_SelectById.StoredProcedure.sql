USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Actors_SelectById]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Actors_SelectById]						
		   @Id int 
		   
as
/*
	Declare @Id int = 3;

	Execute dbo.Actors_SelectById @Id

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

	Where Id = @Id

END


GO

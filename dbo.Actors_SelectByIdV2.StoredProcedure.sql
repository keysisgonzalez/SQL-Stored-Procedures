USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Actors_SelectByIdV2]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Actors_SelectByIdV2]						
		   @Id int 
		   
as
/*
	Declare @Id int = 3;

	Execute dbo.Actors_SelectByIdV2 @Id

*/

BEGIN

SELECT a.[Id]
      ,[Title]
      ,[StatusId]
      ,[PrimaryImageId]
      ,[DateCreated]
      ,[DateModified]
      ,[UserId]
	  ,TypedId
	  ,Url

  FROM [dbo].[ActorsV2] as a inner join dbo.ActorsImages as ai
			on a.PrimaryImageId = ai.Id

	  Where a.Id = @Id

END


GO

USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Friends_SelectAllV2]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Friends_SelectAllV2]

as

/*
	Execute dbo.Friends_SelectAllV2
*/

BEGIN

SELECT [Id]
      ,[Title]
      ,[Bio]
      ,[Summary]
      ,[Headline]
      ,[Slug]
      ,[StatusId]
      ,[PrimaryImageId]
      ,[DateCreated]
      ,[DateModified]
      ,[UserId]

  FROM [dbo].[FriendsV2]

END


GO

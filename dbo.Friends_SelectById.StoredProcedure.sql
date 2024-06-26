USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Friends_SelectById]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Friends_SelectById]
		@Id int

as
/*
	Declare @Id int = 12;

	Execute dbo.Friends_SelectById @Id

	select *
	from dbo.Friends
*/

BEGIN

SELECT [Id]
      ,[Title]
      ,[Bio]
      ,[Summary]
      ,[Headline]
      ,[Slug]
      ,[StatusId]
      ,[PrimaryImageUrl]
	  ,[UserId]
      ,[DateCreated]
      ,[DateModified]
      

  FROM [dbo].[Friends]

  Where Id = @Id

END


GO

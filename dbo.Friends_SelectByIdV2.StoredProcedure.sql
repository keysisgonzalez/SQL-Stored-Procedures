USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Friends_SelectByIdV2]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Friends_SelectByIdV2]
		@Id int

as

/*
	Declare @Id int = 7;
	Execute dbo.Friends_SelectByIdV2 @Id

	select *
from dbo.FriendsV2

select * 
from dbo.Images

*/

BEGIN

SELECT f.[Id]
      ,[Title]
      ,[Bio]
      ,[Summary]
      ,[Headline]
      ,[Slug]
      ,[StatusId]
      ,[PrimaryImageId] as ImageId
	  ,[TypeId] as ImageTypeId
	  ,[Url] as ImageUrl --Now that the tables are joined, i can call the columns without the alias
	  ,[UserId]
      ,[DateCreated]
      ,[DateModified]      	  

  FROM dbo.FriendsV2 as f inner join dbo.Images as i
		on f.PrimaryImageId = i.Id


END


GO

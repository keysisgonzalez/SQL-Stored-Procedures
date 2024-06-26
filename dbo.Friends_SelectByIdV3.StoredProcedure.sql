USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Friends_SelectByIdV3]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Friends_SelectByIdV3]
		@Id int

as

/*
	Declare @Id int = 7;
	Execute dbo.Friends_SelectByIdV3 @Id

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
	  ,[Skills] =  (
			Select s.Name 
			FROM  dbo.Skills as s inner join dbo.FriendSkills as fs
				on s.Id = fs.SkillId 
			Where @Id = fs.FriendId
			For JSON AUTO
	  )
	  ,[UserId]
      ,[DateCreated]
      ,[DateModified]      	  
	
  FROM dbo.FriendsV2 as f inner join dbo.Images as i
		on f.PrimaryImageId = i.Id

  Where f.Id = @Id


END


GO

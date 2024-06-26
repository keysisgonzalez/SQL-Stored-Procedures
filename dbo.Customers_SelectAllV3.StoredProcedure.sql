USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Customers_SelectAllV3]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Customers_SelectAllV3]			
		  

as

/*--------Test---------
	
	Execute dbo.Customers_SelectAllV3 

	Select *
	from dbo.Customers

	select * 
	from dbo.Images2

*/

Begin

	SELECT c.[Id]
		   ,c.[Title] 
           ,c.[Bio]
           ,c.[Summary] 
           ,c.[Headline]
           ,c.[Slug] 
           ,c.[StatusId]
           ,c.[PrimaryImageId]   
		   ,i.[TypeId]
		   ,i.[Url]
		   ,[Skills] = (
					Select s.Name
					from dbo.Skills2 as s inner join dbo.CustomerSkills as cs
					on s.Id = cs.SkillId		
					where c.Id = cs.CustomerId
					for JSON AUTO
		   )
           ,c.[UserId]
		   ,c.[DateCreated]
		   ,c.[DateModified]   

	 FROM [dbo].[Customers] as c inner join dbo.Images as i
			on c.PrimaryImageId = i.Id
		 		   
End


GO

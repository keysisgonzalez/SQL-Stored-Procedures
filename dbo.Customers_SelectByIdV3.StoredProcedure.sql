USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Customers_SelectByIdV3]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Customers_SelectByIdV3]			
		   @Id int 

as

/*--------Test---------

	Declare @Id int = 18;
	
	Execute dbo.Customers_SelectByIdV3 @Id 

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
					where @Id = cs.CustomerId
					for JSON AUTO
		   )
           ,c.[UserId]
		   ,c.[DateCreated]
		   ,c.[DateModified]   

	 FROM [dbo].[Customers] as c inner join dbo.Images as i
			on c.PrimaryImageId = i.Id

		 Where c.Id = @Id



		   
End


GO

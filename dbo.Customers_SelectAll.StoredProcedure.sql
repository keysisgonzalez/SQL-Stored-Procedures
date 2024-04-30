USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Customers_SelectAll]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Customers_SelectAll]				   

as

/*--------Test---------

	Execute dbo.Customers_SelectAll

	Select *
	from dbo.Customers

*/

Begin

	SELECT 
			[Id]
		   ,[Title]
           ,[Bio]
           ,[Summary]
           ,[Headline]
           ,[Slug]
           ,[StatusId]
           ,[PrimaryImageId]
		   ,[UserId]
           ,[DateCreated]
           ,[DateModified]
           

	 FROM [dbo].[Customers]		 
		   
End


GO

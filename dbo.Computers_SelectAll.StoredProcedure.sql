USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Computers_SelectAll]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create proc [dbo].[Computers_SelectAll]		    
		    
as
/*	
	
	Execute dbo.Computers_SelectById 
			  
	Select*
	from dbo.Computers
*/

BEGIN

SELECT		[Id]
           ,[Name] 
           ,[Model]
           ,[Storage]
           ,[PrimaryImageUrl]
           ,[Year]
           ,[IsUsed]
		   ,[DateCreated] 
		   ,[DateModified] 

		FROM [dbo].[Computers]    
		
END


GO

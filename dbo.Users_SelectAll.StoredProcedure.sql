USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Users_SelectAll]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Users_SelectAll]

as

/*
	Execute dbo.Users_SelectAll	
*/

BEGIN

SELECT [Id]
      ,[FirstName]
      ,[LastName]
      ,[Email]
      ,[AvatarUrl]
      ,[TenantId]      
      ,[DateCreated]
      ,[DateModified]
  FROM [dbo].[Users]

END
GO

USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Players_SelectById]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Players_SelectById]
			@Id int
as
/*
	Declare @Id int = 1		

	Execute dbo.Players_SelectById @Id
	

*/


BEGIN

	SELECT 
           [Id]
		   ,[Title]
           ,[StatusId]
           ,[PrimaryImageUrl]           
           ,[UserId]

	FROM dbo.Players
	Where Id = @Id

END


GO

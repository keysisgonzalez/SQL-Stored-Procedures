USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Players_SelectByIdV2]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create proc [dbo].[Players_SelectByIdV2]
			@Id int
as
/*
	Declare @Id int = 1		

	Execute dbo.Players_SelectByIdV2 @Id
	

*/


BEGIN

	SELECT 
           p.[Id]
		   ,[Title]
           ,[StatusId]
           ,[PrimaryImageId]           
           ,[UserId]
		   ,[DateCreated]
		   ,[DateModified]
		   ,TypeId
		   ,Url

	FROM dbo.PlayersV2 as p inner join dbo.PlayersImages as pim
				on p.PrimaryImageId = pim.Id


	Where p.Id = @Id

END


GO

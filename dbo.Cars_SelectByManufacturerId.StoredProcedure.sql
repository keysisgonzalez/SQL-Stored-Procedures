USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Cars_SelectByManufacturerId]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Cars_SelectByManufacturerId]			
				@ManufacturerId int	

as
/*
	Declare @ManufacturerId int = 4;
	Execute Cars_SelectByManufacturerId @ManufacturerId

	select *
	from dbo.Cars

	select * 
	from dbo.Manufacturers

*/

BEGIN

SELECT c.[Id]
	  ,m.[Name] as Make
	  ,m.[Country] 
	  ,c.[Model]
      ,c.[Year]           
	  ,c.[IsUsed]
      ,c.[DateCreated]
      ,c.[DateModified]

  FROM [dbo].[Cars] as c inner join dbo.Manufacturers as m
				on  m.Id =  c.ManufacturerId

  Where @ManufacturerId = c.ManufacturerId 
  For JSON AUTO

END


GO

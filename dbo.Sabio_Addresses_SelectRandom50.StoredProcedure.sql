USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Sabio_Addresses_SelectRandom50]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Sabio_Addresses_SelectRandom50]

/*

	Execute [dbo].[Sabio_Addresses_SelectRandom50]

*/

as
BEGIN

	SELECT top 50 
	      [Id]
		  ,[LineOne]
		  ,[SuiteNumber]
		  ,[City]
		  ,[State]
		  ,[PostalCode]
		  ,[IsActive]
		  ,[Lat]
		  ,[Long]
	  FROM [dbo].[Sabio_Addresses]
	  --where id > 4000
	  Order By NEWID()

END



GO

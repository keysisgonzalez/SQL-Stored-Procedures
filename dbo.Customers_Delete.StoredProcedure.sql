USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Customers_Delete]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


Create proc [dbo].[Customers_Delete]		
		   @Id int 

as

/*--------Test---------

	Declare @Id int = 12;

	Select *
	from dbo.Customers
	Where Id = @Id

	Execute dbo.Customers_Delete @Id 

	Select *
	from dbo.Customers
	Where Id = @Id
*/

Begin
	
	 DELETE FROM [dbo].[Customers]
		 Where Id = @Id
		   
End


GO

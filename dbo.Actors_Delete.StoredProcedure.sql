USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Actors_Delete]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create proc [dbo].[Actors_Delete]
			@Id int
		  
		   
as
/*
	Declare @Id int = 0,

	Select*
	From dbo.Actors 
	Where id = @Id;
			
	Execute dbo.Actors_Delete @Id

	Select*
	From dbo.Actors 
	Where id = @Id;			

*/

BEGIN
			  
	  DELETE FROM [dbo].[Actors] 
			Where id = @Id;   
	
	
END


GO

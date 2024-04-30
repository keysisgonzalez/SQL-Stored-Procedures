USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Computers_Delete]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Computers_Delete]	
		@Id int
				    
as
/*		
	Declare @Id int = 4;

	Execute dbo.Computers_Delete @Id

	Select*
	from dbo.Computers
*/

BEGIN

DELETE	
		FROM [dbo].[Computers]    
		WHERE Id = @Id
END


GO

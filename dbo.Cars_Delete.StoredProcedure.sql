USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Cars_Delete]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Cars_Delete]			
			@Id int			

as

/*
	Execute dbo.Cars_Delete	

*/


BEGIN

DELETE FROM [dbo].[Cars]
	  Where Id = @Id

END


GO
